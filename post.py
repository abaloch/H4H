from flask import Flask,jsonify
import sqlite3
import random
import json

# Define connection and cursor
#connection = sqlite3.connect('h4h_database.db', check_same_thread=False)
#cursor = connection.cursor()

#setting up flask up
app = Flask(__name__)


# return Password Value 1 & Password Value 2..convert form py to json. send to frontend
'''
@app.route('/api/getPw')
def ret():
    connection = sqlite3.connect('h4h_database.db', check_same_thread=False) #connecting to database
    cursor = connection.cursor() # cursor
    cursor.execute("SELECT PType from User where Ph=123456789;") #getting the Password Type from the database

    l=cursor.fetchone()[0] # l takes the value of the Password type

    cursor.execute(f"Update user set PValue1= (select * from \'{l}\' order by random() limit 1) where Ph = 123456789;")
    connection.commit()

    cursor.execute("Select PValue1 from User where Ph=123456789;")
    aaa=cursor.fetchone()[0]
    return aaa

    # updates user's PValue 1 (first password) to take the value of the randomly generated password
    cursor.execute(f"SELECT PValue1 from User where Ph=123456789;")
    aa=cursor.fetchone()[0] #aa takes the value of the first randomly generated password

    cursor.execute(f"Update user set PValue2= (select * from \'{l}\' order by random() limit 1) where Ph = 123456789;")
    connection.commit()
    # updates user's PValue 2 (second password) to take the value of the randomly generated password
    cursor.execute(f"SELECT PValue2 from User where Ph=123456789;")
    bb=cursor.fetchone()[0] #bb takes the value of the second randomly generated password
    cursor.close()
    connection.close()
    return jsonify(aa,bb);

'''

# sending options and password to the front end
@app.route('/api/opt1')
def retopt1():
    connection = sqlite3.connect('h4h_database.db', check_same_thread=False) #connecting to database
    cursor = connection.cursor() # cursor
    cursor.execute("SELECT PType from User where Ph=123456789;") #getting the Password Type from the database

    l=cursor.fetchone()[0] # l takes the value of the Password type

    cursor.execute(f"Update user set PValue1= (select * from \'{l}\' order by random() limit 1) where Ph = 123456789;")
    connection.commit()


    cursor.execute("Select PValue1 from User where Ph=123456789;")
    p1= cursor.fetchone()[0]


    cursor.execute(f"select * from \'{l}\' order by random() limit 1")
    o1 = cursor.fetchone()[0]

    while o1==p1:
        cursor.execute(f"select * from \'{l}\' order by random() limit 1")
        o1 = cursor.fetchone()[0]

    cursor.execute(f"select * from \'{l}\' order by random() limit 1")
    o2 = cursor.fetchone()[0]
    while o2 == p1 or o2==o1:
        cursor.execute(f"select * from \'{l}\' order by random() limit 1")
        o2 = cursor.fetchone()[0]

    cursor.execute(f"select * from \'{l}\' order by random() limit 1")
    o3 = cursor.fetchone()[0]

    while o3 == p1 or o3==o2 or o3==o1 or o2==o3:
        cursor.execute(f"select * from \'{l}\' order by random() limit 1")
        o3 = cursor.fetchone()[0]

    cursor.close()
    connection.close()
    return jsonify(p1,o1,o2,o3);


@app.route('/api/opt2')
def retopt2():
    connection = sqlite3.connect('h4h_database.db', check_same_thread=False) #connecting to database
    cursor = connection.cursor() # cursor
    cursor.execute("SELECT PType from User where Ph=123456789;") #getting the Password Type from the database

    l=cursor.fetchone()[0] # l takes the value of the Password type

    cursor.execute(f"Update user set PValue2= (select * from \'{l}\' order by random() limit 1) where Ph = 123456789;")
    connection.commit()


    cursor.execute("Select PValue2 from User where Ph=123456789;")
    p2= cursor.fetchone()[0]


    cursor.execute(f"select * from \'{l}\' order by random() limit 1")
    o1 = cursor.fetchone()[0]

    while o1==p2:
        cursor.execute(f"select * from \'{l}\' order by random() limit 1")
        o1 = cursor.fetchone()[0]

    cursor.execute(f"select * from \'{l}\' order by random() limit 1")
    o2 = cursor.fetchone()[0]
    while o2 == p2 or o2==o1:
        cursor.execute(f"select * from \'{l}\' order by random() limit 1")
        o2 = cursor.fetchone()[0]

    cursor.execute(f"select * from \'{l}\' order by random() limit 1")
    o3 = cursor.fetchone()[0]

    while o3 == p2 or o3==o2 or o3==o1 or o2==o3:
        cursor.execute(f"select * from \'{l}\' order by random() limit 1")
        o3 = cursor.fetchone()[0]

    cursor.close()
    connection.close()
    return jsonify(p2,o1,o2,o3);








