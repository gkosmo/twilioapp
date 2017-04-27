require 'twilio-ruby'
twili_pho_num = ''
account_sid = ''
auth_tok = ''
client = Twilio::REST::Client.new account_sid, auth_tok

messages = client.account.messages.list(to: twili_pho_num)
phone_numbers = messages.map { |message| message.from }.uniq
phone_numbers.each do |num|
  client.account.calls.create(
  from: twili_pho_num,
  to: num,
  url: 'http://9a373c41.ngrok.io/call'
  ).sid

end
#
# client = Twilio::REST::Client.new account_sid, auth_tok
# client.account.messages.create(
# from: twili_pho_num,
# to: '+32470693461',
# body: 'Hello my ass from le wagon '
# ).sid
