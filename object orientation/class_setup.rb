class ApiConnector
  attr_accessor :title, :description, :url

  def test_method
    puts 'testing class call'
  end

  def initialize(title: title, description: description, url: url = "google.com") #default value google.com, naming parameters
    @title = title
    @description = description
    @url = url
    secret_method
  end

  def api_logger
    puts "API Connector is starting..."
  end

  private

    def secret_method
      puts "A secret message from inside the parent class"
    end
end

class SmsConnector < ApiConnector
  def send_sms
    `curl -X POST -d "notification[title]=#{@title}" -d "notification[url]=http://edutechional-resty.herokuapp.com/posts/1" #{@url}`
  end
end

class MailConnector < ApiConnector
  def send_email
    puts 'sending email...'
  end
end


class PhoneConnector < ApiConnector
  def send_phone_call
    puts 'sending phone call...'
  end

  def api_logger
    super
    puts "Phone call API connection starting"
  end

end


sms = SmsConnector.new(description: "My cool description", title: "My Title", url: "http://edutechional-smsy.herokuapp.com/notifications")
phone = PhoneConnector.new(description: "My cool description", title: "My Title", url: "yahoo.com")
email = MailConnector.new(description: "My cool description", title: "My Title", url: "yahoo.com")

#sms.send_sms
#phone.send_phone_call
#email.send_email
=begin
api.url = "http://google.com/"
puts api.url
api.test_method
=end
#phone.send_phone_call
phone.api_logger
