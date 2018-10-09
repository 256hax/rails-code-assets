require 'typhoeus'
require 'uri'

page_urls = ['https://www.example.com/abc/.././test?id=1000&cat=A01', 'https://duckduckgo.com/']

### Scraping
hydra = Typhoeus::Hydra.new

requests = page_urls.map do |page_url|
  request = Typhoeus::Request.new(page_url)
  hydra.queue(request)
  request
end

hydra.run

responses = requests.map { |request|
  uri = URI.parse(request.base_url) # request.base_url is url

  # Directory
  uri_first_char = uri.host[0, 1]
  dir_path = "#{File.dirname(__FILE__)}/scraped/#{uri_first_char}/#{uri.host}"

  # File
  uri_sanitize = uri.path.gsub(/\/|\.\./, '_') # replacemend "slash" and "double dots"
  file_name = "#{uri_sanitize}?#{uri.query}.html"

  # Save HTML
  if FileTest.exist?(dir_path)
    File.open("#{dir_path}/#{file_name}", "w") do |f|
      f.puts(request.response.body.gsub(/\r\n|\r|\n|\t/, '')) #get response data "request.response.body" with deleted empty lines "gsub(/\r\n|\r|\n|\t/, '')"
    end
  end
}
