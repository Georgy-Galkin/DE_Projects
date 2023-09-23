CREATE ROLE admin_group;
CREATE ROLE data_quality_group;
CREATE ROLE managers_group;
CREATE ROLE planning_group;
---CREATE ROLE data_analysts_group;


GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin_group;
GRANT INSERT, UPDATE, ON dim_geo_base,dim_geo_mapping,dim_sku_base,dim_sku_mapping TO data_quality_group;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO managers_group;
GRANT INSERT, UPDATE, ON dim_matrix_assortment,dim_matrix_goals TO planning_group;


