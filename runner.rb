require 'unirest'

print "Give me your name:"
user_name = gets.chomp

response = Unirest.get("http://localhost:3000/url/name_url?name=#{user_name}")
data = response.body

puts JSON.pretty_generate(data)