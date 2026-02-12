# Power BI Dashboard

## Purpose

The Power BI dashboard presents insights generated from the data warehouse model.

The design focuses on:
- Trend analysis over time
- Segmentation (location, property type, other categories)
- Comparative performance views
- Decision-ready KPIs

---

## Data Model

The Power BI model is based on the warehouse structure:

- Fact table: main measures (e.g., price, counts, volume)
- Dimensions: date, location, and segmentation attributes

This ensures that slicers and filters behave correctly and visuals aggregate accurately.

---

## Recommended Dashboard Pages (Structure)

### 1) Executive Summary
- Total sales / total volume
- Average price
- Key trend line by year/quarter
- Key slicers (year, suburb, property type)

### 2) Trend Analysis
- Sales volume / price trend over time
- Quarterly or monthly movement
- Comparison across segments

### 3) Segmentation View
- Top suburbs by average price
- Breakdown by property type
- Distribution and ranking views

### 4) Detail / Drilldown
- Table view for filtered records
- Cross-filtering support for investigation

---

## Notes

Screenshots and the list of DAX measures are stored in this folder.
