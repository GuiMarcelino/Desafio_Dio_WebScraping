require 'net/http'
require 'nokogiri'

url = URI.parse('http://example.com')
http = Net::HTTP.new(url.host, url.port)
request = Net::HTTP::Get.new(url.to_s)
response = http.request(request)

doc = Nokogiri::HTML(response.body)

div = doc.at_css('div')
h1 = div.at_css('h1')
p = div.at_css('p')

puts h1.content
puts p.content
