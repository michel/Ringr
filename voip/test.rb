require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'


# put your own credentials here
 account_sid = 'AC94571850a65e4706bb71b21cd9c6831a'
 auth_token = '0cb6a2e4127d2cdca4c51fcad1dfd925'

#
# # set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token
@call = @client.account.calls.create(
    :from => '+442033222875',
    :to => '+31646637852',
    :url => "https://raw.github.com/gist/1952696/c612857033f5f385c53a9f77ad90f9fcaa41c331/test.xml"
)
