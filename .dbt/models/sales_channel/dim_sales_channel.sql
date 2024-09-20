{{ config(materialized='table') }}

WITH source AS (
    SELECT DISTINCT
        `Sales Channel ` AS sales_channel
    FROM `empyrean-engine-435606-m3.dibimbing.amazon_sale_report`
)

SELECT
    ROW_NUMBER() OVER() AS channel_id,
    sales_channel
FROM source