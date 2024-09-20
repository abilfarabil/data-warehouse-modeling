{{ config(materialized='table') }}

WITH source AS (
    SELECT DISTINCT
        Style AS product_style,
        SKU AS product_sku,
        Category AS product_category,
        Size AS product_size,
        ASIN AS product_asin
    FROM `empyrean-engine-435606-m3.dibimbing.amazon_sale_report`
)

SELECT
    ROW_NUMBER() OVER() AS product_id,
    product_style,
    product_sku,
    product_category,
    product_size,
    product_asin
FROM source