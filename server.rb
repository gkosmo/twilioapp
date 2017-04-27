require 'sinatra'
require 'twilio-ruby'

post '/message' do
  body =params["Body"]
  p params
 "  <Response>
    <Message> You said : #{body} </Message>
  </Response>  "
end

get '/' do
  erb :home
end

post '/call' do
  twil = Twilio::TwiML::Response.new do |r|
    r.Play 'http://9a373c41.ngrok.io/kenny.mp3'
  end
  twil.text
end
