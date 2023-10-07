import argparse
import openai
import json

from query import select_from_table
from schema import get_schema
from db import create_connection

DATABASE = "./pythonsqlite.db"

def main(conn, question):
    with open("auth.json", "r") as f:
        auth = json.load(f)
    # Load your API key from an environment variable or secret management service
    #openai.api_key = os.getenv(auth['api_key'])
    openai.api_key = auth['api_key']
    print(f"Question: {question}")

    # prompt = f"""
    
    # Given the following SQL Schema:{get_schema()}
    # Write a query using valid SQLite syntax to answer this question: {question}
    
    # """

    prompt = f"""
Given the following SQL Schema:{get_schema()}
Write a query using valid SQLite syntax to answer this question: {question}
If the query involves tables that don't exist or cannot be executed without error, write a select statement that will return only a string describing the error.
"""

    response = openai.Completion.create(
        model="text-davinci-003",
        prompt=prompt,
        temperature=0,
        max_tokens=200
    )


    q = response["choices"][0]["text"]

    print(f"AI-generated SQL query: \n{q}")
    print("Answer: \n")
    select_from_table(conn, q)


if __name__ == "__main__":
    # parser = argparse.ArgumentParser()
    # parser.add_argument("--query", type=str, default="natural language query")
    # args = parser.parse_args()
    conn = create_connection(DATABASE)

    q = ""
    p = """Enter a natural language query.
Type (q/Q) to stop
Query: """

    
    while q not in ["q", "Q"]:
        print(p, end="")
        q = input()
        print()
        if q not in ["q", "Q"]:
            main(conn, question=q)

    print("done")
    # main(conn, question=args.query)
