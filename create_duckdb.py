import duckdb
import pandas as pd

# Load the dataset
df = pd.read_csv('C:/Users/Josh/Desktop/ChowaCo/Connors Side Quests/Task 2 - Create My First dbt Project/Top 1000 technology companies.csv')

# Connect to DuckDB and create a table
con = duckdb.connect('tech_companies.duckdb')
con.execute("CREATE TABLE tech_companies AS SELECT * FROM df")
con.close()