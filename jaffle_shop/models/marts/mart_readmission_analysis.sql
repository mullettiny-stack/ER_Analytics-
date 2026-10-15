
{{ config(materialized='table') }}

WITH readmission_counts AS (
    SELECT
        readmitted,
        COUNT(*) AS record_count
    FROM {{ ref('int_er_analytic') }}
    GROUP BY readmitted
)

SELECT
    readmitted,
    record_count,
    ROUND(
        100.0 * record_count
        / SUM(record_count) OVER (),
        2
    ) AS percentage_of_records
FROM readmission_counts
ORDER BY record_count DESC
