# Data Documentation

## Data Sources

This project uses structured datasets intended for Business Intelligence and Data Warehousing modelling.

The dataset was selected to support:

- Time-based trend analysis
- Segmentation analysis
- Aggregated reporting
- Comparative performance analysis

All data used in this project is structured and suitable for relational warehouse modelling.

---

## Data Structure Overview

The dataset contains key attributes required for BI modelling, such as:

- Date / Time fields
- Categorical segmentation fields
- Numerical measures for aggregation
- Identifiers for relational joins

These attributes were evaluated to determine whether they belong in:

- Fact tables (measurable numeric data)
- Dimension tables (descriptive attributes)

---

## Data Quality Considerations

During preparation, the following checks were performed:

- Null value inspection
- Duplicate detection
- Data type validation
- Date format standardisation
- Outlier identification
- Consistency validation

Where necessary, data was cleaned and transformed during the ETL phase before loading into the warehouse.

---

## Data Governance

The dataset was handled in a controlled workflow:

Raw Data → Cleaned Data → Transformed Data → Warehouse Tables

This ensures reproducibility and transparency in the BI process.
