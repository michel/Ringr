class Caller
  def initialize(account_sid,auth_token,from_number,call_back_url)
    @client =  Twilio::REST::Client.new(account_sid, auth_token)
    @from_number = from_number
    @call_back_url = call_back_url
  end
  def call!(number)
    @client.account.calls.create( {
      from: @from_number,
      to: number,
      url: @call_back_url
    } )
  end
end
