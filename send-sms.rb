require 'twilio-ruby'

client = Twilio::REST::Client.new account_sid, auth_tok
client.account.messages.create(
from: twili_pho_num,
to: '+32470693461',
body: 'Hello my ass from le wagon '
).sid
