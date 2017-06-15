# This is the parent class that has all the general methods that apply to all the child classes.
# This class has all the general similarities of the child classes.
class ApiConnector
	attr_accessor :title, :description, :url

	def initialize(title: title, description: description, url: url = "google.com")
		@title = title
		@description = description
		@url = url
	end

	def testing_initializers
		puts @title
		puts @description
		puts @url
	end

	def test_method
		puts "Testing class call"
	end
end

# Sets the class to a variable
api = ApiConnector.new
# Passing in a variable value
api.url = "http://google.com/"
# Call a method in the class
puts "\n"
api.test_method
puts "\n"

api = ApiConnector.new(title: "My Title", description: "My cool description", url: "google.com")
api.testing_initializers
puts "\n"

api = ApiConnector.new(title: "My Title", description: "My cool description")
api.testing_initializers
puts "\n"

api = ApiConnector.new(title: "My Title", description: "My cool description", url: "yahoo.com")
api.testing_initializers
puts "\n"

# These are the child classes that have access to everything in the parent class.
class SmsConnector < ApiConnector
	def send_sms
		puts "Sending sms..."
	end
end

class PhoneConnector < ApiConnector
	def send_phone_call
		puts "Sending phone call..."
	end
end

class MailConnector < ApiConnector
	def send_email
		puts "Sending email..."
	end
end

api = SmsConnector.new(title: "My Title", description: "My cool description", url: "yahoo.com")
sms = SmsConnector.new(title: "My Title", description: "My cool description", url: "yahoo.com")
phone = PhoneConnector.new(title: "My Title", description: "My cool description", url: "yahoo.com")
email = MailConnector.new(title: "My Title", description: "My cool description", url: "yahoo.com")

api.testing_initializers
puts "\n"

sms.send_sms
phone.send_phone_call
email.send_email



