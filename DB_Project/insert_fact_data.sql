-- Create a temporary table
CREATE TEMP TABLE temp_sales_table (
    sales_qty_rsv NUMERIC,
    sales_qty_units INT,
    date DATE,
    sku_ext_code VARCHAR(255),
    pos_ext_code VARCHAR(255)
);


-- INSERT statements for fact_daily_sales (20 rows)
INSERT INTO temp_sales_table ("sales_qty_rsv", "sales_qty_units", "date", "sku_ext_code", "pos_ext_code") VALUES
    (85.0, 42, '2023-09-03', 'USH001', 'USLA1234'),
    (60.3, 30, '2023-09-03', 'USP002', 'USNY5678'),
    (45.1, 22, '2023-09-04', 'USM003', 'USIL9876'),
    (110.8, 55, '2023-09-05', 'USS004', 'USTX5432'),
    (92.6, 46, '2023-09-05', 'USK005', 'USFL2468'),
    (38.9, 19, '2023-09-06', 'UST006', 'USPA1357'),
    (75.5, 37, '2023-09-07', 'USS007', 'USAZ8642'),
    (55.2, 28, '2023-09-07', 'USC008', 'USCA2319'),
    (42.0, 21, '2023-09-08', 'USP009', 'USTX6754'),
    (95.3, 47, '2023-09-09', 'USD010', 'USGA7890'),
    (72.1, 36, '2023-09-09', 'USH001', 'USLA1234'),
    (49.8, 24, '2023-09-10', 'USP002', 'USNY5678'),
    (88.7, 44, '2023-09-11', 'USM003', 'USIL9876'),
    (68.4, 34, '2023-09-11', 'USS004', 'USTX5432'),
    (56.2, 27, '2023-09-12', 'USK005', 'USFL2468'),
    (78.9, 39, '2023-09-13', 'UST006', 'USPA1357'),
    (62.7, 31, '2023-09-13', 'USS007', 'USAZ8642'),
    (47.5, 23, '2023-09-14', 'USC008', 'USCA2319'),
    (105.6, 52, '2023-09-15', 'USP009', 'USTX6754'),
    (84.3, 42, '2023-09-15', 'USD010', 'USGA7890'),
    (73.2, 36, '2023-09-16', 'USH001', 'USLA1234'),
    (54.7, 27, '2023-09-16', 'USP002', 'USNY5678'),
    (42.9, 21, '2023-09-17', 'USM003', 'USIL9876'),
    (102.4, 51, '2023-09-18', 'USS004', 'USTX5432'),
    (88.3, 44, '2023-09-18', 'USK005', 'USFL2468'),
    (37.6, 18, '2023-09-19', 'UST006', 'USPA1357'),
    (70.8, 35, '2023-09-20', 'USS007', 'USAZ8642'),
    (53.5, 26, '2023-09-20', 'USC008', 'USCA2319'),
    (44.7, 22, '2023-09-21', 'USP009', 'USTX6754'),
    (97.2, 48, '2023-09-22', 'USD010', 'USGA7890'),
    (74.5, 37, '2023-09-23', 'USH001', 'USLA1234'),
    (52.8, 26, '2023-09-23', 'USP002', 'USNY5678'),
    (43.1, 21, '2023-09-24', 'USM003', 'USIL9876'),
    (108.7, 54, '2023-09-25', 'USS004', 'USTX5432'),
    (89.1, 45, '2023-09-25', 'USK005', 'USFL2468'),
    (38.5, 19, '2023-09-26', 'UST006', 'USPA1357'),
    (76.3, 38, '2023-09-27', 'USS007', 'USAZ8642'),
    (54.6, 27, '2023-09-27', 'USC008', 'USCA2319'),
    (41.8, 21, '2023-09-28', 'USP009', 'USTX6754'),
    (93.2, 46, '2023-09-29', 'USD010', 'USGA7890'),
    (72.6, 36, '2023-09-30', 'USH001', 'USLA1234'),
    (55.3, 27, '2023-09-30', 'USP002', 'USNY5678'),
    (42.7, 21, '2023-10-01', 'USM003', 'USIL9876'),
    (103.8, 51, '2023-10-02', 'USS004', 'USTX5432'),
    (87.5, 43, '2023-10-02', 'USK005', 'USFL2468'),
    (37.9, 18, '2023-10-03', 'UST006', 'USPA1357'),
    (71.4, 35, '2023-10-04', 'USS007', 'USAZ8642'),
    (52.1, 26, '2023-10-04', 'USC008', 'USCA2319'),
    (45.2, 22, '2023-10-05', 'USP009', 'USTX6754'),
    (95.7, 47, '2023-10-06', 'USD010', 'USGA7890'),
    (71.9, 36, '2023-10-07', 'USH001', 'USLA1234'),
    (53.8, 26, '2023-10-07', 'USP002', 'USNY5678'),
    (41.5, 21, '2023-10-08', 'USM003', 'USIL9876'),
    (104.5, 52, '2023-10-09', 'USS004', 'USTX5432'),
    (86.8, 43, '2023-10-09', 'USK005', 'USFL2468'),
    (39.1, 19, '2023-10-10', 'UST006', 'USPA1357'),
    (72.7, 36, '2023-10-11', 'USS007', 'USAZ8642'),
    (51.2, 25, '2023-10-11', 'USC008', 'USCA2319'),
    (44.3, 22, '2023-10-12', 'USP009', 'USTX6754'),
    (96.3, 48, '2023-10-13', 'USD010', 'USGA7890'),
    (73.4, 36, '2023-10-14', 'USH001', 'USLA1234'),
    (56.1, 28, '2023-10-14', 'USP002', 'USNY5678'),
    (42.8, 21, '2023-10-15', 'USM003', 'USIL9876'),
    (106.2, 53, '2023-10-16', 'USS004', 'USTX5432'),
    (88.7, 44, '2023-10-16', 'USK005', 'USFL2468'),
    (38.2, 19, '2023-10-17', 'UST006', 'USPA1357'),
    (73.9, 36, '2023-10-18', 'USS007', 'USAZ8642'),
    (54.2, 27, '2023-10-18', 'USC008', 'USCA2319'),
    (45.9, 23, '2023-10-19', 'USP009', 'USTX6754'),
    (94.6, 47, '2023-10-20', 'USD010', 'USGA7890'),
    (74.7, 37, '2023-10-21', 'USH001', 'USLA1234'),
    (57.3, 28, '2023-10-21', 'USP002', 'USNY5678'),
    (43.3, 21, '2023-10-22', 'USM003', 'USIL9876'),
    (105.4, 52, '2023-10-23', 'USS004', 'USTX5432'),
    (87.1, 43, '2023-10-23', 'USK005', 'USFL2468'),
    (39.8, 20, '2023-10-24', 'UST006', 'USPA1357'),
    (70.2, 35, '2023-10-25', 'USS007', 'USAZ8642'),
    (51.9, 26, '2023-10-25', 'USC008', 'USCA2319'),
    (44.6, 22, '2023-10-26', 'USP009', 'USTX6754'),
    (97.8, 48, '2023-10-27', 'USD010', 'USGA7890');

WITH cte_new_sku AS (
    SELECT DISTINCT t.sku_ext_code
    FROM temp_sales_table t
    LEFT JOIN dim_sku_mapping m ON t.sku_ext_code = m.sku_ext_code
    WHERE m.sku_ext_code IS NULL
)
INSERT INTO dim_sku_mapping (sku_ext_code, sku_internal_code) -- specify the column names here
SELECT sku_ext_code, 'temp_sku' -- specify the values here
FROM cte_new_sku RETURNING *;

WITH cte_new_pos AS (
    SELECT DISTINCT t.pos_ext_code
    FROM temp_sales_table t
    LEFT JOIN dim_geo_mapping m ON t.pos_ext_code = m.pos_ext_code
    WHERE m.pos_ext_code IS NULL
)
INSERT INTO dim_geo_mapping (pos_ext_code, pos_internal_code) -- specify the column names here
SELECT pos_ext_code, 'temp_pos' -- specify the values here
FROM cte_new_pos RETURNING *;

INSERT INTO fact_daily_sales
SELECT * FROM temp_sales_table;




CREATE TEMP TABLE temp_stock_table (
    stock_qty NUMERIC,
    date DATE,
    sku_ext_code VARCHAR(255),
    pos_ext_code VARCHAR(255)
);
INSERT INTO temp_stock_table ("stock_qty", "date", "sku_ext_code", "pos_ext_code") VALUES
    (50.0, '2023-09-03', 'USH001', 'USLA1234'),
    (35.0, '2023-09-03', 'USP002', 'USNY5678'),
    (20.0, '2023-09-03', 'USM003', 'USIL9876'),
    (60.0, '2023-09-04', 'USS004', 'USTX5432'),
    (40.0, '2023-09-04', 'USK005', 'USFL2468'),
    (25.0, '2023-09-04', 'UST006', 'USPA1357'),
    (55.0, '2023-09-05', 'USS007', 'USAZ8642'),
    (37.0, '2023-09-05', 'USC008', 'USCA2319'),
    (22.0, '2023-09-05', 'USP009', 'USTX6754'),
    (62.0, '2023-09-06', 'USD010', 'USGA7890'),
    (45.0, '2023-09-06', 'USH001', 'USLA1234'),
    (30.0, '2023-09-06', 'USP002', 'USNY5678'),
    (18.0, '2023-09-07', 'USM003', 'USIL9876'),
    (58.0, '2023-09-07', 'USS004', 'USTX5432'),
    (39.0, '2023-09-07', 'USK005', 'USFL2468'),
    (24.0, '2023-09-08', 'UST006', 'USPA1357'),
    (60.0, '2023-09-08', 'USS007', 'USAZ8642'),
    (35.0, '2023-09-08', 'USC008', 'USCA2319'),
    (20.0, '2023-09-09', 'USP009', 'USTX6754'),
    (65.0, '2023-09-09', 'USD010', 'USGA7890'),
    (47.0, '2023-09-09', 'USH001', 'USLA1234'),
    (32.0, '2023-09-10', 'USP002', 'USNY5678'),
    (16.0, '2023-09-10', 'USM003', 'USIL9876'),
    (55.0, '2023-09-10', 'USS004', 'USTX5432'),
    (38.0, '2023-09-11', 'USK005', 'USFL2468'),
    (22.0, '2023-09-11', 'UST006', 'USPA1357'),
    (63.0, '2023-09-11', 'USS007', 'USAZ8642'),
    (48.0, '2023-09-12', 'USC008', 'USCA2319'),
    (28.0, '2023-09-12', 'USP009', 'USTX6754'),
    (15.0, '2023-09-12', 'USD010', 'USGA7890'),
    (50.0, '2023-09-13', 'USH001', 'USLA1234'),
    (33.0, '2023-09-13', 'USP002', 'USNY5678'),
    (19.0, '2023-09-13', 'USM003', 'USIL9876'),
    (58.0, '2023-09-14', 'USS004', 'USTX5432'),
    (40.0, '2023-09-14', 'USK005', 'USFL2468'),
    (26.0, '2023-09-14', 'UST006', 'USPA1357'),
    (53.0, '2023-09-15', 'USS007', 'USAZ8642'),
    (36.0, '2023-09-15', 'USC008', 'USCA2319'),
    (21.0, '2023-09-15', 'USP009', 'USTX6754'),
    (65.0, '2023-09-16', 'USD010', 'USGA7890'),
    (45.0, '2023-09-16', 'USH001', 'USLA1234'),
    (29.0, '2023-09-16', 'USP002', 'USNY5678'),
    (17.0, '2023-09-17', 'USM003', 'USIL9876'),
    (57.0, '2023-09-17', 'USS004', 'USTX5432'),
    (38.0, '2023-09-17', 'USK005', 'USFL2468'),
    (23.0, '2023-09-18', 'UST006', 'USPA1357'),
    (52.0, '2023-09-18', 'USS007', 'USAZ8642'),
    (34.0, '2023-09-18', 'USC008', 'USCA2319'),
    (20.0, '2023-09-19', 'USP009', 'USTX6754'),
    (62.0, '2023-09-19', 'USD010', 'USGA7890'),
    (44.0, '2023-09-19', 'USH001', 'USLA1234'),
    (30.0, '2023-09-20', 'USP002', 'USNY5678'),
    (16.0, '2023-09-20', 'USM003', 'USIL9876'),
    (55.0, '2023-09-20', 'USS004', 'USTX5432'),
    (39.0, '2023-09-21', 'USK005', 'USFL2468'),
    (22.0, '2023-09-21', 'UST006', 'USPA1357'),
    (64.0, '2023-09-21', 'USS007', 'USAZ8642'),
    (47.0, '2023-09-22', 'USC008', 'USCA2319'),
    (29.0, '2023-09-22', 'USP009', 'USTX6754'),
    (14.0, '2023-09-22', 'USD010', 'USGA7890');


WITH cte_new_sku AS (
    SELECT DISTINCT t.sku_ext_code
    FROM temp_stock_table t
    LEFT JOIN dim_sku_mapping m ON t.sku_ext_code = m.sku_ext_code
    WHERE m.sku_ext_code IS NULL
)
INSERT INTO dim_sku_mapping (sku_ext_code, sku_internal_code) -- specify the column names here
SELECT sku_ext_code, 'temp_sku' -- specify the values here
FROM cte_new_sku RETURNING *;

WITH cte_new_pos AS (
    SELECT DISTINCT t.pos_ext_code
    FROM temp_stock_table t
    LEFT JOIN dim_geo_mapping m ON t.pos_ext_code = m.pos_ext_code
    WHERE m.pos_ext_code IS NULL
)
INSERT INTO dim_geo_mapping (pos_ext_code, pos_internal_code) -- specify the column names here
SELECT pos_ext_code, 'temp_pos' -- specify the values here
FROM cte_new_pos RETURNING *;


INSERT INTO fact_daily_stock
SELECT * FROM temp_stock_table;