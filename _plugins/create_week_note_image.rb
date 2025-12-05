require 'selenium-webdriver'

module WeekNoteImageGenerator
  class << self
    def enabled?
      return @enabled unless @enabled.nil?
      @enabled = chrome_available?
    end

    def chrome_available?
      launch_chrome
      true
    rescue StandardError => e
      Jekyll.logger.warn "WeekNoteImageGenerator:", "Chrome not available, skipping image generation: #{e.message}"
      false
    end

    def browser
      @browser ||= launch_chrome
    end

    def reset_browser
      @browser&.quit rescue nil
      @browser = nil
    end

    def launch_chrome
      options = Selenium::WebDriver::Chrome::Options.new
      options.add_argument('--headless')
      options.add_argument('--no-sandbox')
      options.add_argument('--disable-dev-shm-usage')
      Selenium::WebDriver.for :chrome, options: options
    end

    def path_for(note, file_extension)
      root_dir = note.path.sub(note.relative_path, "")
      note_path = note.permalink[0..-5]
      "#{root_dir}_site#{note_path}#{file_extension}"
    end

    def render_note_image(html_path, image_path, retries: 3)
      return unless enabled?

      attempts = 0
      begin
        attempts += 1
        browser.navigate.to "file:///#{html_path}"
        browser.manage.window.resize_to(720, 600)
        browser.save_screenshot image_path
      rescue Net::ReadTimeout, Selenium::WebDriver::Error::WebDriverError => e
        if attempts < retries
          reset_browser
          retry
        else
          Jekyll.logger.warn "WeekNoteImageGenerator:", "Failed to generate image after #{retries} attempts: #{e.message}"
        end
      end
    end
  end
end

Jekyll::Hooks.register :weeknotes, :post_write do |note|
  html_path = WeekNoteImageGenerator.path_for(note, "html")
  image_path = WeekNoteImageGenerator.path_for(note, "png")
  WeekNoteImageGenerator.render_note_image(html_path, image_path)
end
