require 'selenium-webdriver'

module WeekNoteImageGenerator
  class << self
    def changed_weeknotes
      @changed_weeknotes ||= begin
        git_diff = `git diff --name-only HEAD~1 HEAD 2>/dev/null`.split("\n")
        git_diff.select { |f| f.start_with?('_weeknotes/') }.to_set
      rescue
        Set.new
      end
    end

    def note_changed?(note)
      changed_weeknotes.include?(note.relative_path)
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

    def render_note_image(note, retries: 3)
      return unless note_changed?(note)

      html_path = path_for(note, "html")
      image_path = path_for(note, "png")

      Jekyll.logger.info "WeekNoteImageGenerator:", "Generating image for #{note.relative_path}"

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
  WeekNoteImageGenerator.render_note_image(note)
end
