{{ config(materialized='table') }}

WITH source AS (
    SELECT DISTINCT
        Fulfilment AS fulfilment_method,
        `fulfilled-by` AS fulfilled_by
    FROM `empyrean-engine-435606-m3.dibimbing.amazon_sale_report`
)

SELECT
    ROW_NUMBER() OVER() AS fulfilment_id,
    fulfilment_method,
    fulfilled_by
FROM source