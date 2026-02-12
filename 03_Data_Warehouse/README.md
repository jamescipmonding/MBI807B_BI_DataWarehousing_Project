# Data Warehouse Design

## Overview

This project implements a structured data warehouse model to support Business Intelligence reporting.

The warehouse design follows dimensional modelling principles, separating:

- Fact tables (measurable numeric data)
- Dimension tables (descriptive attributes)

This structure improves:

- Query performance
- Aggregation efficiency
- Scalability for reporting
- Analytical clarity

---

## Warehouse Architecture

The warehouse follows a simplified star schema design:

Fact Table:
- Stores quantitative measures
- Contains foreign keys linking to dimensions

Dimension Tables:
- Store descriptive attributes
- Provide filtering, grouping, and segmentation capabilities

This design supports time-based trend analysis and multi-dimensional reporting.

---

## Fact Table Design

The fact table contains:

- Primary identifiers
- Foreign keys to dimensions
- Numerical measures for aggregation
- Date reference for time analysis

Measures are additive and optimised for SUM, AVG, COUNT, and trend calculations.

---

## Dimension Table Design

Dimensions include:

- Time dimension (Date hierarchy)
- Category / Segmentation dimension
- Other descriptive attributes relevant to analysis

Each dimension table includes a primary key used for relational joins.

---

## Analytical Layer

SQL queries were written on top of the warehouse tables to:

- Aggregate metrics
- Generate grouped insights
- Support dashboard-level reporting
- Enable performance comparisons

This layered structure separates raw data handling from analytical consumption.
