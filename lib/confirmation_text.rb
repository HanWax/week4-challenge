require 'rubygems'
require 'twilio-ruby'

module ConfirmationText

	def send_confirmation_text(customer, message)
			@client = Twilio::REST::Client.new ACCOUNT_SID, AUTH_TOKEN
			@client.account.messages.create(
			  :from => TAKEAWAY_NUMBER,
			  :to => customer.phone_number,
			  :body => message
			)
	end

	private
		TAKEAWAY_NUMBER = "+441548312029"
		ACCOUNT_SID = "AC7919329c76e6599961f3c3b8be45a4f1"
		AUTH_TOKEN = "96c810cb06c84a3de791e763f0e9cbe0"
end
 
