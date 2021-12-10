require 'nokogiri'
require 'fastimage'

exclusions = [
    "/images/rss.svg",
"/images/GitHub-Mark-Light-32px.png",
"/images/twitter-32.png",
"/images/facebook-black-32.png",
"/images/twitter-black-32.png",
"/images/tag.svg",
]

def as_source_set(img)
    src = img[:src]
    return if src.start_with? "http"
    return unless src.start_with? "/images/"
    
    w, h = FastImage.size "./" + src, :raise_on_failure => true

    return if w < 480

    extension_index = src.rindex(".")

    img[:sizes] = "(max-width: 375px) 300px
                    (max-width: 600px) 480px,
                    #{w}px"
    
                    srcsets = ""
    ["300", "480"].each do |size|
        sized_src = src.sub('/images/', "/images/#{size}")
        srcsets += "#{sized_src} #{size}w,"
    end
    srcsets += "#{src} #{w}w,"
    img[:srcsets] = srcsets

end

Jekyll::Hooks.register :documents, :post_render do |doc|
    
    parsed_data = Nokogiri::HTML.parse(doc.output).css("img")
        .reject { |t| exclusions.include? t[:src] }
        .each do |img|
            as_source_set(img)
        end
       
    parsed_data.to_s
end
