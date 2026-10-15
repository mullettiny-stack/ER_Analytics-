
{{ config(materialized='table') }}

SELECT
    readmitted,
    COUNT(*) AS record_count,
    ROUND(AVG(n_emergency), 2) AS avg_prior_emergency_visits,
    ROUND(AVG(n_inpatient), 2) AS avg_prior_inpatient_visits,
    ROUND(AVG(n_outpatient), 2) AS avg_prior_outpatient_visits
FROM {{ ref('int_er_analytic') }}
GROUP BY readmitted
ORDER BY record_count DESC