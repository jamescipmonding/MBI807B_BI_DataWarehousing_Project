# ETL Script Overview

This folder contains the ETL logic used to prepare data for the warehouse.

## Files
- Raw data is extracted from source CSV files
- Transformations are applied (cleaning, formatting, validation)
- Data is loaded into dimension and fact tables using SQL insert logic

## Notes
If using Python:
- pandas is used for transformation and validation
- sqlite3 (or similar) is used to load into the warehouse database

If using SQL-only:
- staging tables are created first
- insert-select statements populate dimensions and facts
