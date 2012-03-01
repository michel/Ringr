 require 'rubygems' # not necessary with ruby 1.9 but included for completeness
 require 'twilio-ruby'

# build up a response
 response = Twilio::TwiML::Response.new do |r|
   r.Say 'hello there', :voice => 'woman'
end
puts response.text
