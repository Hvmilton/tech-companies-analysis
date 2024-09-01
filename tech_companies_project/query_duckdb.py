import duckdb

# Connect to your DuckDB database (first one for local, second for container)
# conn = duckdb.connect('C:/Users/jhvmi/Documents/GitHub/tech-companies-analysis/tech_companies_project/tech_companies.duckdb')

conn = duckdb.connect('/app/tech_companies.duckdb')

# query
result = conn.execute("SELECT * FROM tech_companies LIMIT 10").fetchall()

# Print the results
print(result)