import mysql.connector


try:
    mydb = mysql.connector.connect(
    host = "localhost",
    username = "root",
    password = "incel123"
    )
except mysql.connector.Error:
    print("Error connecting to database")

mycursor = mydb.cursor()

sql = "CREATE DATABASE IF NOT EXISTS alx_book_store"
mycursor.execute(sql)
print("Database 'alx_book_store' created successfully!")
mycursor.close()
mydb.close()
