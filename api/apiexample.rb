require 'rubygems'
require 'httparty'

class EdutechionalResty
  include HTTParty
  base_uri "edutechional-resty.herokuapp.com/"

  def posts
    self.class.get('/posts.json')
  end
end

edutechional_resty = EdutechionalResty.new
#puts edutechional_resty.posts
edutechional_resty.posts.each do |post|
  p "Title: #{post['title']} | Description: #{post['description']}"
end
