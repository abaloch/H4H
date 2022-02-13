# Download the helper library from https://www.twilio.com/docs/python/install
import os
import config
import sys
from twilio.rest import Client


# Find your Account SID and Auth Token at twilio.com/console
# and set the environment variables. See http://twil.io/secure

name = sys.argv[1] # 0 would give the script name
offset = sys.argv[2]

client = Client(account_sid, auth_token)
l = [f"Hi {name}, it is time to check in to Project Pineapple", f"Hi {name}, please check in to Project Pineapple ASAP", f"Hi {name}, it has been over 30 minutes past your check in time. Please check in ASAP"]

response = ""
# now we need to pick one of these body statement based on the time past checkinif (offset < 15) {
	response = l[0]
} else if (offset < 30) {
	response = l[1]
} else if (offset >= 30) {
	response = l[2]
}

message = client.messages \
                .create(
                     body=response,
                     from_=outgoing,
                     to=destination
                 )

print(message.sid)

