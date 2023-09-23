CREATE OR REPLACE VIEW mapping_sku_init AS (
    SELECT * FROM dim_sku_mapping where sku_internal_code='temp_sku'
)

CREATE OR REPLACE VIEW mapping_pos_init; AS (
    SELECT * FROM dim_geo_mapping where pos_internal_code='temp_pos'
)