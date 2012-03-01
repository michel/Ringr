require 'twilio-ruby'

class Callr
  def initialize
      account_sid = 'AC94571850a65e4706bb71b21cd9c6831a'
      auth_token = '0cb6a2e4127d2cdca4c51fcad1dfd925'
     @client =   Twilio::REST::Client.new account_sid, auth_token
  end
  def call(number,name)
       @call = @client.account.calls.create(
          :from => '+442033222875',
          :to => number,
          :url => "https://raw.github.com/gist/1952696/c612857033f5f385c53a9f77ad90f9fcaa41c331/test.xml"
         )
  end
end

#x = Ringr.new
#x.call("+31648121608")
