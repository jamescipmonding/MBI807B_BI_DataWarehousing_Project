# ETL (Extract, Transform, Load)

## Purpose

The ETL process converts raw source data into a structured, warehouse-ready format.

This ensures the final dataset is:

- Consistent (standardised formats)
- Reliable (validated and cleaned)
- Analytics-ready (fact/dimension structure)

---

## ETL Workflow

### 1) Extract
- Source files were collected in their raw format
- Key fields required for analysis were identified (date, category attributes, numeric measures)

### 2) Transform
Data preparation steps included:

- Removing duplicates
- Handling null values (remove / replace where appropriate)
- Standardising column names and formats
- Converting data types (dates, numeric fields)
- Creating dimension-ready lookup fields (e.g., suburb, property type)
- Creating consistent keys for joins

### 3) Load
- Cleaned outputs were loaded into the data warehouse tables:
  - Dimension tables (Date, Location, Property Type)
  - Fact table (Property sales measures)

Indexes were also applied to improve query performance for BI reporting.

---

## Validation Checks

Before loading, the following validations were performed:

- Row count check (raw vs cleaned vs loaded)
- Null check on key fields
- Duplicate check for primary keys
- Data type validation for numeric and date fields

---

## Output

The result of the ETL process is a stable warehouse model that supports:
- SQL analysis queries
- Power BI dashboard reporting
- Trend and segmentation analysis
