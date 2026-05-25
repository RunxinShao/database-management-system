"""
Lab2: Transaction Test with Python
Jeongkyu Lee
"""
import mysql.connector

try:
    conn = mysql.connector.connect(host='localhost',
                             database='sanjose',
                             user='root',
                             password='srx17640408396')

    conn.autocommit = False
    cursor = conn.cursor()
    # Deposit to account A 
    sql_update_query = """Update acct set bal = bal + 100 where id = 'A'"""
    cursor.execute(sql_update_query)
 
    # Withdraw from account B 
    #sql_update_query = """Update acct set bal = bal - 100  where id = 'B'"""
    # Withdraw from account B with Error
    sql_update_query = """Update acct set bal = bal - 100  where d = 'B'"""
    cursor.execute(sql_update_query)
    print ("Record Updated successfully ")
 
    #Commit your changes
    conn.commit()
 
except mysql.connector.Error as error :
    print("Failed to update record to database rollback: {}".format(error))
    #reverting changes because of exception
    conn.rollback()
finally:
    #closing database connection.
    if(conn.is_connected()):
         cursor.close()
         conn.close()
         print("connection is closed")
