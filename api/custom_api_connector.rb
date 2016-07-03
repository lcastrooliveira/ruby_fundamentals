require 'rubygems'
require 'httparty'

class StackExchange
  include HTTParty
  base_uri 'api.stackexchange.com'

  def initialize(service,page)
    @options = { query: {site: service, page: page}}
  end

  def questions
    self.class.get('/2.2/questions',@options)
  end

  def users
    self.class.get('/2.2/users',@options).each do |user|
      p user
    end
  end

end

stack_exchange = StackExchange.new('stackoverflow',1)
#puts stack_exchange.questions
stack_exchange.users
