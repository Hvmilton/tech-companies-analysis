import duckdb

# Connect to your DuckDB database
conn = duckdb.connect('C:/Users/Josh/Documents/GitHub/tech-companies-analysis/tech_companies_project/tech_companies.duckdb')

# Execute the SQL query
result = conn.execute("SELECT * FROM information_schema.tables WHERE table_name = 'tech_companies'").fetchall()

# Print the result
print(result)