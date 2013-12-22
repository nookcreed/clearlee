namespace :clearlee do
  desc "Clearlee rake tasks..."
  task get_camera_urls: :environment do
    require 'nokogiri'
    require 'open-uri'
    doc = Nokogiri::HTML(open("http://www.dpreview.com/products/cameras/all"))
    links = doc.css('a')

    hrefs = links.map {|link| link.attribute('href').to_s}.uniq.sort.delete_if {|href| href.empty? || !href.include?('products') || !href.end_with?('/buy')}
    File.open("/tmp/test", 'w') { |file| file.puts(hrefs) }
  end

end
