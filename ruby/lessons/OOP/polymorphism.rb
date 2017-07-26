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

	def api_logger
		puts "API Connector starting..."
	end

	# Should just be used in side of the class
	private
	# polymorphism
		def secret_method 
			puts "A secret message!"
		end
	# It is very similar to private methods
	protected

end

# These are the child classes that have access to everything in the parent class.
class SmsConnector < ApiConnector
	def send_sms
		puts "Sending sms..."

	end
end

class PhoneConnector < ApiConnector
	# polymorphism
	def api_logger
		super
		puts "Phone call API Connector starting..."
	end

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


# polymorphism
phone.api_logger



