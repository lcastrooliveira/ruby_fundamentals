require 'rubygems'
require 'httparty'

response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
#Lots of json with data
puts response.body
#200 (if everything is ok)
puts response.code
#Ok (if status 200)
puts response.message
puts response.headers.inspect
