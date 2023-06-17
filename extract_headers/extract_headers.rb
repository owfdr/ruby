require 'net/http'

print "enter url: "

url = URI.parse(gets.chomp)

response = Net::HTTP.get_response(url)

if response.code == '200'
  h1_tags = response.body.scan(/<h1\b[^>]*>(.*?)<\/h1>/)
  h2_tags = response.body.scan(/<h2\b[^>]*>(.*?)<\/h2>/)

  puts "Found #{h1_tags.size} h1 tags:"
  puts h1_tags.map { |tag| "- " + tag[0] }

  puts ""

  puts "Found #{h2_tags.size} h2 tags:"
  puts h2_tags.map { |tag| "- " + tag[0] }
else
  puts "Failed to retrieve the website content. Response code: #{response.code}"
end

