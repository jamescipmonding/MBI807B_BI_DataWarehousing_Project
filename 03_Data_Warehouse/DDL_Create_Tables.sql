-- =============================================
-- MBI807B Data Warehouse DDL Script
-- Star Schema Design
-- =============================================

-- ========================
-- Dimension: Date
-- ========================
CREATE TABLE dim_date (
    date_id INTEGER PRIMARY KEY,
    full_date DATE,
    year INTEGER,
    month INTEGER,
    month_name TEXT,
    quarter INTEGER
);

-- ========================
-- Dimension: Location
-- ========================
CREATE TABLE dim_location (
    location_id INTEGER PRIMARY KEY,
    suburb TEXT,
    region TEXT
);

-- ========================
-- Dimension: Property Type
-- ========================
CREATE TABLE dim_property_type (
    property_type_id INTEGER PRIMARY KEY,
    property_type TEXT
);

-- ========================
-- Fact Table: Property Sales
-- ========================
CREATE TABLE fact_property_sales (
    sale_id INTEGER PRIMARY KEY,
    date_id INTEGER,
    location_id INTEGER,
    property_type_id INTEGER,
    price REAL,
    bedrooms INTEGER,
    bathrooms INTEGER,
    land_size REAL,
    
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (location_id) REFERENCES dim_location(location_id),
    FOREIGN KEY (property_type_id) REFERENCES dim_property_type(property_type_id)
);

-- ========================
-- Indexes for Performance
-- ========================
CREATE INDEX idx_fact_date ON fact_property_sales(date_id);
CREATE INDEX idx_fact_location ON fact_property_sales(location_id);
CREATE INDEX idx_fact_property_type ON fact_property_sales(property_type_id);
