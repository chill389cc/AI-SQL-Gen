"""
  Code copied from https://github.com/porterjenkins/byu-cs452/blob/3a944610b597c55c63ddc66a9cf230d95c209a42/python_sql_lite/query.py
"""

import argparse
from db import create_connection


def select_all_from_menu(conn):
    """
    Query all rows in the tasks table
    :param conn: the Connection object
    :return:
    """
    cur = conn.cursor()
    cur.execute("SELECT * FROM menu")

    rows = cur.fetchall()

    for row in rows:
        print(row)

def select_from_table(conn, query):
    """
    Query all rows in the tasks table
    :param conn: the Connection object
    :return:
    """
    cur = conn.cursor()
    cur.execute(query)

    rows = cur.fetchall()

    for row in rows:
        print(row)

if __name__ == "__main__":
    database = "./pythonsqlite.db"
    conn = create_connection(database)

    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, help="SELECT * FROM menu where unit_price >=55.0")
    args = parser.parse_args()
    print(f"Executing query: {args.query}")
    select_from_table(conn, args.query)