from flask import Flask, request
# import the sqlite3 module
import sqlite3

# Define connection and cursor
connection = sqlite3.connect('h4h_database.db')
cursor = connection.cursor()

app = Flask(__name__)

# use GET requests
# this method should create a new row
@app.route('/addUser/')
def addUser():
    connection = sqlite3.connect('h4h_database.db')
    cursor = connection.cursor()
    Name = request.args.get('Name', None)
    Ph = request.args.get('Ph', None)
    # '00:00:00'
    cursor.execute(f"INSERT INTO USER VALUES ({Name},{Ph},null,null,null,null,null,0,0,0);")
    #cursor.execute(f"INSERT INTO USER VALUES (request.args.get('Name', None),request.args.get('Ph', None),null,null,"null,null,null,0,0,0)")

    return 'Added user!'

@app.route('/setNight/')
def setNight():
    connection = sqlite3.connect('h4h_database.db')
    cursor = connection.cursor()
    # WHERE CLAUSE TO RETRIEVE DATA
    # cursor.execute("SELECT * FROM USER WHERE PH = 1234567890") not adding
    # name = request.args.get('name', None) we have one user atm
    # phoneNumber = request.args.get('phoneNumber', None)
    phonenum = 1234567890
    cursor.execute('''UPDATE USER SET startTime = ? WHERE Ph = ?''', (request.args.get('startTime', None), phonenum))

    #cursor.execute('''UPDATE USER SET startTime = ? WHERE Ph = ?''', ('00:01:02', phonenum))
    #cursor.execute("Select * from user;")
    #l=cursor.fetchone()[2]
    #return l
    # SET endTime = request.args.get('endTime', None) || 'new end time'

    cursor.execute('''UPDATE USER SET endTime = ? WHERE Ph = ?''', (request.args.get('endTime', None), phonenum))
    cursor.execute('''UPDATE USER SET PType = ? WHERE Ph = ?''', (request.args.get('PType', None), phonenum))
    cursor.execute('''UPDATE USER SET PValue1 = ? WHERE Ph = ?''', (request.args.get('PValue1', None), phonenum))
    cursor.execute('''UPDATE USER SET PValue2 = ? WHERE Ph = ?''', (request.args.get('PValue2', None), phonenum))
    cursor.execute('''UPDATE USER SET CF1Num = ? WHERE Ph = ?''', (request.args.get('CF1Num', None), phonenum))
    cursor.execute('''UPDATE USER SET CF2Num = ? WHERE Ph = ?''', (request.args.get('CF2Num', None), phonenum))
    cursor.execute('''UPDATE USER SET CF3Num = ? WHERE Ph = ?''', (request.args.get('CF3Num', None), phonenum))
    return 'updated fields'

    # cursor.execute(f"INSERT INTO USER VALUES ({name},{phoneNumber}, {startTime}, {endTime}, {passwordType}, {pw1}, {pw2}, {closeFriend1}, {closeFriend2}, {closeFriend3})")

@app.route("/updateEndTime")
def updateEndTime():
    connection = sqlite3.connect('h4h_database.db')
    cursor = connection.cursor()
    # < str: newEnd >
    # newEnd
    #not in SQL, have to use cursor connection to sql
    #UPDATE USER
    #SET endTime = newEnd
    #WHERE PH = 1234567890

    phonenum = 1234567890
    # cursor.execute('''UPDATE USER SET endTime = ? WHERE Ph = ?''', (newEnd, phonenum))
    cursor.execute('''UPDATE USER SET endTime = ? WHERE Ph = ?''', (request.args.get('endTime', None), phonenum))
    return 'updated end time'

if __name__ == '__post__':
    app.run(debug=True)