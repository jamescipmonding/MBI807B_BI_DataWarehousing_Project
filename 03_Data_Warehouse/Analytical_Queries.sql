-- =============================================
-- MBI807B Analytical SQL Layer
-- =============================================

-- 1. Total Sales by Year
SELECT 
    d.year,
    SUM(f.price) AS total_sales
FROM fact_property_sales f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY d.year
ORDER BY d.year;


-- 2. Average Price by Suburb
SELECT 
    l.suburb,
    AVG(f.price) AS avg_price
FROM fact_property_sales f
JOIN dim_location l ON f.location_id = l.location_id
GROUP BY l.suburb
ORDER BY avg_price DESC;


-- 3. Sales by Property Type
SELECT 
    p.property_type,
    COUNT(f.sale_id) AS number_of_sales,
    AVG(f.price) AS avg_price
FROM fact_property_sales f
JOIN dim_property_type p 
    ON f.property_type_id = p.property_type_id
GROUP BY p.property_type
ORDER BY number_of_sales DESC;


-- 4. Quarterly Trend Analysis
SELECT 
    d.year,
    d.quarter,
    SUM(f.price) AS quarterly_sales
FROM fact_property_sales f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY d.year, d.quarter
ORDER BY d.year, d.quarter;
