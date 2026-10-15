{{ config(materialized='view') }}

SELECT
    *,
    CASE
        WHEN time_in_hospital <= 3 THEN 'Short Stay'
        WHEN time_in_hospital <= 7 THEN 'Medium Stay'
        ELSE 'Long Stay'
    END AS stay_category
FROM {{ ref('stg_er_analytic') }}