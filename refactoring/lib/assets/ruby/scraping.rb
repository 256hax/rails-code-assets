require 'mechanize'

agent = Mechanize.new
page = agent.get("http://kakaku.com/") # Shift_JIS encoding
# elements = page.search('meta[charset]')
# puts elements

p Mechanize::Util.detect_charset(page.body) # => SHIFT_JIS
