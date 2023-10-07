"""
  Code copied from https://github.com/porterjenkins/byu-cs452/blob/3a944610b597c55c63ddc66a9cf230d95c209a42/python_sql_lite/build.py
"""

import os

from db import create_table, create_connection

def select_all_from_planet(conn):
    cur = conn.cursor()
    cur.execute("SELECT * FROM planet")

    rows = cur.fetchall()

    for row in rows:
        print(row)

def main():
  database = "./pythonsqlite.db"

  # create a database connection
  conn = create_connection(database)
  if conn is None:
    print("Something went wrong connecting")
    return
  cursor = conn.cursor()
  with open('schema.sql', 'r') as schema_file:
    script = schema_file.read()
    cursor.executescript(script)

  with open('data.sql', 'r') as data_file:
    script = data_file.read()
    cursor.executescript(script)
  
  print("Database build successful!")
  select_all_from_planet(conn)

if __name__ == "__main__":
  main()
