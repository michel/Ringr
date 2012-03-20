require 'spec_helper'
describe Caller do
  let(:number) { "12345"}
  let(:from_number) { "890"}
  let(:callback_url) { "http://google.com"}
  let(:account_sid) { "account_sid"}
  let(:auth_token) { "auth_token"}
  it "initializes with an account_sid,  auth token, from_phone_number and callback_url" do
    Twilio::REST::Client.should_receive(:new).with(account_sid,auth_token)
    Caller.new(account_sid,auth_token,from_number,callback_url)
  end


  describe "call!" do
    let(:caller) {Caller.new(account_sid,auth_token,from_number,callback_url)}
    it "takes a telephone number " do
      client = stub
      client.should_receive(:create).with( {
        from: from_number,
        to: number,
        url: callback_url })
      Twilio::REST::Client.any_instance.stub_chain(:account,:calls).and_return(client)
      caller.call!(number)
    end
  end

end
