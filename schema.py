def get_schema():
  """
  Just use the schema in the schema.sql file 
  instead of creating python strings for the statements.
  """
  with open("schema.sql", "r") as schema_file:
    return schema_file.read()
