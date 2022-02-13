# import the sqlite3 module
import sqlite3

# Define connection and cursor
connection = sqlite3.connect('h4h_database.db')
cursor = connection.cursor()




# create USER table
cursor.execute("DROP TABLE IF EXISTS USER")
createTable = '''CREATE TABLE USER(
Name VARCHAR(100), Ph int, PType VARCHAR(30), PValue1 VARCHAR(30), PValue2 VARCHAR(30), 
CF1Num int, CF2Num int, CF3Num int)'''

cursor.execute(createTable)

# Insert data into the table when you get it
cursor.execute(f"INSERT INTO USER VALUES ('NULL',4405918757, 'Shape', 'NULL','NULL',0, 0, 0)")

cursor.execute("SELECT * FROM USER")

# printing the cursor data
print(cursor.fetchall())





# create Password table
cursor.execute("DROP TABLE IF EXISTS PW")
createPWTable = '''CREATE TABLE PW(
shape VARCHAR(100), words VARCHAR(100)
)'''
cursor.execute(createPWTable)

cursor.execute("INSERT INTO PW VALUES ('sad', 'soccer')")
cursor.execute("INSERT INTO PW VALUES ('pentagon', 'badminton')")
cursor.execute("INSERT INTO PW VALUES ('smiley', 'golf')")
cursor.execute("INSERT INTO PW VALUES ('spades', 'republic')")
cursor.execute("INSERT INTO PW VALUES ('clover', 'computer')")
cursor.execute("INSERT INTO PW VALUES ('diamond', 'stylus')")
cursor.execute("INSERT INTO PW VALUES ('heart', 'hack')")
cursor.execute("INSERT INTO PW VALUES ('star', 'butter')")
cursor.execute("INSERT INTO PW VALUES ('slant', 'mask')")
cursor.execute("INSERT INTO PW VALUES ('square', 'horse')")
cursor.execute("INSERT INTO PW VALUES ('circle', 'horse')")
cursor.execute("INSERT INTO PW VALUES ('triangle', 'computer')")


cursor.execute("SELECT * FROM PW")

# printing the cursor data
print(cursor.fetchall())


# create WORD table
cursor.execute("DROP TABLE IF EXISTS WORD")
createWordTable = '''CREATE TABLE WORD(
word_entry VARCHAR(100)
)'''
cursor.execute(createWordTable)

cursor.execute("INSERT INTO WORD VALUES ('soccer')")
cursor.execute("INSERT INTO WORD VALUES ('badminton')")
cursor.execute("INSERT INTO WORD VALUES ('golf')")
cursor.execute("INSERT INTO WORD VALUES ('republic')")
cursor.execute("INSERT INTO WORD VALUES ('computer')")
cursor.execute("INSERT INTO WORD VALUES ('stylus')")
cursor.execute("INSERT INTO WORD VALUES ('hack')")
cursor.execute("INSERT INTO WORD VALUES ('butter')")
cursor.execute("INSERT INTO WORD VALUES ('mask')")
cursor.execute("INSERT INTO WORD VALUES ('horse')")
cursor.execute("INSERT INTO WORD VALUES ('horse')")
cursor.execute("INSERT INTO WORD VALUES ('computer')")

# create SHAPE table
cursor.execute("DROP TABLE IF EXISTS SHAPE")
createShapeTable = '''CREATE TABLE SHAPE(
shape_entry VARCHAR(100)
)'''
cursor.execute(createShapeTable)

cursor.execute("INSERT INTO Shape VALUES ('sad')")
cursor.execute("INSERT INTO Shape VALUES ('pentagon')")
cursor.execute("INSERT INTO Shape VALUES ('smiley')")
cursor.execute("INSERT INTO Shape VALUES ('spades')")
cursor.execute("INSERT INTO Shape VALUES ('clover')")
cursor.execute("INSERT INTO Shape VALUES ('diamond')")
cursor.execute("INSERT INTO Shape VALUES ('heart')")
cursor.execute("INSERT INTO Shape VALUES ('star')")
cursor.execute("INSERT INTO Shape VALUES ('slant')")
cursor.execute("INSERT INTO Shape VALUES ('square')")
cursor.execute("INSERT INTO Shape VALUES ('circle')")
cursor.execute("INSERT INTO Shape VALUES ('triangle')")


#print(cursor.execute(".tables;"));
# check the database creation data
if cursor:
	print("Database Created Successfully !")
else:
	print("Database Creation Failed !")

# Commit the changes in database and Close the connection
connection.commit()
connection.close()

