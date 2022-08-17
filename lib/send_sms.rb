require 'twilio-ruby'
class Send_Text

    def initialize
        @account_sid = "id placeholder"
        @auth_token = 'token placeholder'
        @client = Twilio::REST::Client.new(@account_sid, @auth_token)

        @from = '+447700161756' # Your Twilio number
        @to = '+447890518580' # Your mobile phone number
        @body = ""
        @time = Time.new
    end

    def send_message(body, total)
        eta = (@time + 1 * 60 * 45).strftime('%d/%m/%Y %H:%M')

        @client.messages.create(
        from: @from,
        to: @to,
        body: "Hello! Confirming your order, your order of #{body}, your total is #{total} will be with you at #{eta}. thank you for your order"
        )
        return "sent"
    end
end