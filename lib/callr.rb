require 'twilio-ruby'

class Callr
  def initialize
      account_sid = ''
      auth_token = ''
     @client =   Twilio::REST::Client.new account_sid, auth_token
  end
  def call(number,name)
       @call = @client.account.calls.create(
          :from => '+442033222875',
          :to => number,
          :url => "https://raw.github.com/gist/1952696/c612857033f5f385c53a9f77ad90f9fcaa41c331/test.xml"
          #:url => "https://raw.github.com/gist/1952696/7adff17fcc4723463b2b297a4af2d99cd6823952/test.xml"
         )
  end
end

#x = Ringr.new
#x.call("+31648121608")
