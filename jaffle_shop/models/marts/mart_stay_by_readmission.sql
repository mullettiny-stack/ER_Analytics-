{{ config(materialized='table') }}

SELECT
    readmitted,
    COUNT(*) AS record_count,
    ROUND(AVG(time_in_hospital), 2) AS avg_days_in_hospital,
    MEDIAN(time_in_hospital) AS median_days_in_hospital
FROM {{ ref('int_er_analytic') }}
GROUP BY readmitted
ORDER BY avg_days_in_hospital DESC