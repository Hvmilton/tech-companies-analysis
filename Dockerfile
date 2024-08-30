# Use the official Python image as a base
FROM python:3.9-slim

# Set environment variables
ENV DBT_VERSION=1.5.0

# Install necessary packages
RUN apt-get update && apt-get install -y git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir dbt-core==$DBT_VERSION dbt-duckdb poetry pandas

# Create a working directory
WORKDIR /app

# Copy the entire tech-companies-analysis folder to the container
COPY . /app

# Create the .dbt directory explicitly in the app directory
RUN mkdir -p /app/.dbt

# Copy the profiles.yml file from the correct location into the /app/.dbt directory
COPY ./tech_companies_project/profiles.yml /app/.dbt/profiles.yml

# Set the entrypoint to run dbt commands
ENTRYPOINT ["dbt"]

# Default command to run when container starts
CMD ["run"]