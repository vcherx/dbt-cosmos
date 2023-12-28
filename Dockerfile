FROM quay.io/astronomer/astro-runtime:9.7.0-python-3.11-base
COPY requirements.txt .
RUN pip install -r requirements.txt 
RUN python -m venv dbt_venv && . dbt_venv/bin/activate && pip install --no-cache-dir dbt-snowflake && deactivate