require 'twilio-ruby'
class Send_Text

    def initialize
        @account_sid = 'AC10a9754313ad48747fa1ad491a31ef38'
        @auth_token = 'ebe85118255775409606f46cfa487388'
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