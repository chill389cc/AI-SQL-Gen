from schema import get_schema

question = ""

"""
This one fails to understand that it needs to create an SQL query
example:
Question: What is the name of the largest planet?
AI-generated SQL query: 

The name of the largest planet is not specified in this database.
Answer: (error)
"""

simple_prompt = 
f"""
Answer the following question 
about this database {get_schema()}: 
{question}
"""

# Works well
prompt = f"""
    
    Given the following SQL Schema:{get_schema()}
    Write a query using valid SQLite syntax to answer this question: {question}
    
    """
"""
This one works very well
It will still mess up if you ask about a table that doesn't exist
Question: How many comets have a mass greater than 5kg?
AI-generated SQL query: 

SELECT COUNT(*)
FROM comet
WHERE comet_mass > 5;
Answer: 
"""
complex_promt = 
f"""
A SQLite database was created with the following statements: {get_schema()}.
Using SQL with valid SQLite syntax, write a query to answer this 
question about the data stored in the database: {question}
"""

"""
This one is my favorite. It was able to do some simple error checking itself.
"""
self_checking = 
f"""
Given the following SQL Schema:{get_schema()}
Write a query using valid SQLite syntax to answer this question: {question}
If the query involves tables that don't exist or cannot be executed without error, 
write a select statement that will return only a string describing the error.
"""