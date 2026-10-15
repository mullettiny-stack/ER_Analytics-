# ER Analytics — Healthcare Data Engineering Project

## Overview

ER Analytics is a healthcare data engineering project designed to transform hospital records into structured, analysis-ready datasets for investigating emergency room operations, patient readmissions, hospital length of stay, and resource utilization.

The project uses **Snowflake** as the cloud data warehouse and **dbt (Data Build Tool)** to build modular data transformation models, implement data quality tests, and organize healthcare data for analytical use.

Using a dataset containing 25,000 hospital records, the project demonstrates how raw healthcare data can be transformed into meaningful analytical models to support data-driven decision-making.

## Project Objectives

- Build a structured data transformation pipeline using Snowflake and dbt.
- Organize healthcare data into staging, intermediate, and analytical mart layers.
- Investigate patient readmissions and hospital length of stay.
- Analyze the relationship between prior hospital visits and patient outcomes.
- Examine hospital resource utilization using available patient and treatment records.
- Implement data quality tests to improve data reliability.
- Apply modern data engineering practices, including modular SQL development, documentation, and version control.

## Technologies Used

- **Snowflake:** Cloud data warehouse for storing and querying healthcare data.
- **dbt:** Data transformation, modeling, testing, and documentation.
- **SQL:** Data cleaning, joins, aggregations, and analytical transformations.
- **YAML:** Source configuration, model documentation, and data quality tests.
- **Git and GitHub:** Version control and project management.

## Dataset

The project uses a healthcare dataset containing approximately 25,000 hospital records.

The available data includes:

- Patient diagnosis codes
- Readmission status
- Length of hospital stay
- Medical procedures
- Medications
- Prior hospital visits

These data points provide a foundation for examining patient outcomes, hospital utilization, and patterns associated with readmissions.

## Data Pipeline Architecture

The project follows a layered data transformation architecture.

**Raw Healthcare Data → Snowflake → dbt Staging Models → Intermediate Models → Analytical Marts → Business Analysis**

### 1. Data Warehouse

Snowflake provides the centralized environment for storing the source data and transformed models.

### 2. Staging Layer

The staging layer prepares source data for downstream transformations by creating structured, consistent representations of the raw records.

### 3. Intermediate Layer

The intermediate layer combines related data and prepares reusable transformation logic for analytical models.

### 4. Analytical Marts

The mart layer organizes transformed data into focused datasets that address specific healthcare analytics objectives.

## Analytical Data Models

The project includes four analytical marts:

| Model | Purpose |
|---|---|
| `mart_readmission_analysis` | Analyze patient readmission patterns and associated factors. |
| `mart_stay_by_readmission` | Examine hospital length of stay in relation to readmission status. |
| `mart_prior_visits` | Investigate prior hospital visits and their relationship to patient outcomes. |
| `mart_resource_utilization` | Explore hospital resource utilization using available treatment and patient records. |

Together, these models provide a structured foundation for healthcare analytics.

## Data Quality and Testing

Data quality is an important component of the pipeline. dbt tests help validate assumptions about the transformed data and identify potential issues before analytical use.

The project incorporates tests and model configurations defined in YAML, alongside SQL-based transformations.

The completed build achieved:

- **6 dbt models**
- **41 data quality tests**
- **6 seeds**
- **53 successful build and test steps**

These results demonstrate the successful execution of the configured project build and tests in the development environment.

## Key Data Engineering Concepts

This project demonstrates practical application of:

- Cloud data warehousing with Snowflake
- SQL-based data transformation
- Layered data modeling
- Modular and reusable dbt models
- Data quality testing
- Source and model documentation
- Analytical data marts
- Version control using Git and GitHub

## Running the Project

### Prerequisites

- Python
- dbt Core
- The dbt Snowflake adapter
- A Snowflake account with the required database, schemas, tables, and permissions

### Setup

Clone the repository:

```bash
git clone https://github.com/YOUR-USERNAME/er-analytics-dbt.git
cd er-analytics-dbt
```

Install the Snowflake adapter if it is not already installed:

```bash
pip install dbt-snowflake
```

Configure your Snowflake connection using your local dbt profile. Keep passwords and other credentials out of the repository.

Verify the connection:

```bash
dbt debug
```

Install project dependencies, if applicable:

```bash
dbt deps
```

Run the models:

```bash
dbt run
```

Execute the tests:

```bash
dbt test
```

Generate and serve the documentation:

```bash
dbt docs generate
dbt docs serve
```

**Note:** Successful execution requires the source data, Snowflake configuration, and project dependencies to be available in your environment.

## Potential Future Improvements

- Introduce automated scheduling and orchestration.
- Expand data quality tests and validation rules.
- Add further analytical models for patient outcomes and hospital operations.
- Implement continuous integration for automated dbt testing.
- Develop additional visualizations using the transformed datasets.

## Author

**Chloe Osakwe**

Software Engineering | Data Engineering

This project demonstrates practical experience in healthcare data engineering, cloud data warehousing, SQL transformations, analytics engineering, and data quality management.

---

*Built with Snowflake, dbt, SQL, and GitHub.*