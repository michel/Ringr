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
          :url => "https://raw.github.com/gist/1952696/63acf75801f75851366c1f57be8a3ec5e58a2f7b/test.xml"
         )
  end
end

#x = Ringr.new
#x.call("+31648121608")
