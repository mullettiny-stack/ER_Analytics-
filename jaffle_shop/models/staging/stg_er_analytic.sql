{{ config(materialized='view') }}

SELECT
    id,
    age,
    change,
    diag_1,
    diag_2,
    diag_3,
    a1ctest,
    readmitted,
    n_emergency,
    n_inpatient,
    diabetes_med,
    glucose_test,
    n_outpatient,
    n_procedures,
    n_medications,
    n_lab_procedures,
    time_in_hospital,
    medical_specialty
FROM {{ source('ecom', 'er_analytic') }}