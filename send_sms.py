# Download the helper library from https://www.twilio.com/docs/python/install
import os
import config
import sys
from twilio.rest import Client


# Find your Account SID and Auth Token at twilio.com/console
# and set the environment variables. See http://twil.io/secure

name = sys.argv[1] # 0 would give the script name
offset = sys.argv[2]

# use the name given to query the database to find the close friends phone numbers
connection = sqlite3.connect('h4h_database.db')
cursor = connection.cursor()
cursor.execute(f"SELECT * FROM USER WHERE NAME = \'{name}\';")
record = cursor.fetchone()
myphone = record[1] # this is your phone number
dest = [record[len(record)-1], record[len(record)-2], record[len(record)-3]]


client = Client(account_sid, auth_token)
l = [f"Hi {name}, it is time to check in to Project Pineapple", f"Hi {name}, please check in to Project Pineapple ASAP", f"Hi {name}, it has been over 30 minutes past your check in time. Please check in ASAP"]

response = ""
# now we need to pick one of these body statement based on the time past checkinif (offset < 15) {
if (offset < 15):
	response = l[0]
elif (offset < 30):
	response = l[1]
elif (offset >= 30):
	response = l[2]

message = client.messages \
                .create(
                     body=response,
                     from_=outgoing,
                     to=myphone
                 )

print(message.sid)

if (offset >= 30):
    for i in range (3):
        message2 = client.messages \
                        .create(
                             body=f"Your friend {name} might be in danger, please check up on them ASAP.",
                             from_=outgoing,
                             to=dest[i]
                         )

        print(message2.sid)


