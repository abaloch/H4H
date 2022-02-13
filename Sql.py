# import the sqlite3 module
import sqlite3

# Define connection and cursor
connection = sqlite3.connect('h4h_database_db.db')
cursor = connection.cursor()

# create table
cursor.execute("DROP TABLE IF EXISTS USER")
createTable = '''CREATE TABLE USER(
Name VARCHAR(100), Ph int, startTime TIME,
endTime TIME, PType VARCHAR(30), PValue1 VARCHAR(30), PValue2 VARCHAR(30), 
CF1Num VARCHAR(30), CF2Num VARCHAR(30), CF3Num VARCHAR(30))'''

cursor.execute(createTable)


# Insert data into the table when you get it
a="badminton"
cursor.execute(f"INSERT INTO USER VALUES ('Asad','abaloch', 'isthebest', 070000, 010000, \'{a}\','NULL','NULL', 'ss','ss')")

b = "select PType from User;"
b=cursor.execute("select PType from User;")




cursor.execute("SELECT * FROM USER")

# printing the cursor data
print(cursor.fetchall())

# check the database creation data
if cursor:
	print("Database Created Successfully !")
else:
	print("Database Creation Failed !")

# Commit the changes in database and Close the connection
connection.commit()
connection.close()
