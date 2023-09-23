
-- Drop tables if they exist (in reverse order to handle foreign key dependencies)
DROP TABLE IF EXISTS fact_daily_stock;
DROP TABLE IF EXISTS fact_daily_sales;
DROP TABLE IF EXISTS dim_sku_mapping;
DROP TABLE IF EXISTS dim_matrix_assortment;
DROP TABLE IF EXISTS dim_matrix_goals;
DROP TABLE IF EXISTS dim_geo_mapping;
DROP TABLE IF EXISTS dim_geo_base;
DROP TABLE IF EXISTS dim_dc;
DROP TABLE IF EXISTS dim_sku_base;
DROP TABLE IF EXISTS dim_regions;

-- Define the "dim_regions" table
CREATE TABLE dim_regions (
    region_code SERIAL PRIMARY KEY,
    region_name text NOT NULL
);

-- Define the "dim_sku_base" table
CREATE TABLE dim_sku_base (
    sku_internal_code text PRIMARY KEY,
    sku_internal_name text,
    manufacturer text
);

-- Define the "dim_dc" table
CREATE TABLE dim_dc (
    region_code SERIAL REFERENCES dim_regions(region_code),
    sku_internal_code text REFERENCES dim_sku_base(sku_internal_code),
    stock_qty int
);

-- Define the "dim_geo_base" table
CREATE TABLE dim_geo_base (
    pos_internal_code text PRIMARY KEY,
    region_code SERIAL REFERENCES dim_regions(region_code),
    city text,
    address text
);

-- Define the "dim_geo_mapping" table
CREATE TABLE dim_geo_mapping (
    pos_ext_code text PRIMARY KEY,
    pos_internal_code text REFERENCES dim_geo_base(pos_internal_code)
);

-- Define the "dim_matrix_goals" table
CREATE TABLE dim_matrix_goals (
    pos_internal_code text REFERENCES dim_geo_base(pos_internal_code),
    matrix bigint NOT NULL
);

-- Define the "dim_matrix_assortment" table
CREATE TABLE dim_matrix_assortment (
    sku_internal_code text REFERENCES dim_sku_base(sku_internal_code),
    matrix bigint
);

-- Define the "dim_sku_mapping" table
CREATE TABLE dim_sku_mapping (
    sku_ext_code text PRIMARY KEY,
    sku_internal_code text REFERENCES dim_sku_base(sku_internal_code)
);

-- Define the "fact_daily_sales" table
CREATE TABLE fact_daily_sales (
    sales_qty_rsv double precision,
    sales_qty_units double precision,
    date date,
    sku_ext_code text REFERENCES dim_sku_mapping(sku_ext_code),
    pos_ext_code text REFERENCES dim_geo_mapping(pos_ext_code)
);

-- Define the "fact_daily_stock" table
CREATE TABLE fact_daily_stock (
    stock_qty double precision,
    date date,
    sku_ext_code text REFERENCES dim_sku_mapping(sku_ext_code),
    pos_ext_code text REFERENCES dim_geo_mapping(pos_ext_code)
);
