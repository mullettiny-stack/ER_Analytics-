{{ config(materialized='table') }}

SELECT
    readmitted,
    COUNT(*) AS record_count,
    ROUND(AVG(n_medications), 2) AS avg_medications,
    ROUND(AVG(n_procedures), 2) AS avg_procedures,
    ROUND(AVG(n_lab_procedures), 2) AS avg_lab_procedures
FROM {{ ref('int_er_analytic') }}
GROUP BY readmitted
ORDER BY record_count DESC
