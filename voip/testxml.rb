 require 'rubygems' # not necessary with ruby 1.9 but included for completeness
 require 'twilio-ruby'

# build up a response
 response = Twilio::TwiML::Response.new do |r|
   r.play 'http://izerion.com/da1392f0-460b-012f-74be-3c07544054a5.mp3'
end
puts response.text
