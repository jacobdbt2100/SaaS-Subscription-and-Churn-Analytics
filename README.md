## End-to-End Analytics Engineering Project:
___

# Building an ELT Pipeline for SaaS Revenue, Retention & Support Analytics

<img src="https://raw.githubusercontent.com/jacobdbt2100/SaaS-Subscription-and-Churn-Analytics/main/dbt_postgresql_elt.jpg" width="800">

## Executive Summary:

Designed and implemented a production-style ELT pipeline to transform raw SaaS data into analytics-ready models for revenue, retention, churn, reactivation, and support performance analysis.

Using dbt, PostgreSQL, and Power BI, I built a structured metrics layer that enables business stakeholders to monitor MRR, churn rate, LTV, reactivation cycles, and support load in real time.

## Business Problem:

SaaS companies often struggle with:
- Fragmented revenue data (subscriptions, upgrades, churn)
- Poor visibility into retention and reactivation behaviour
- No single source of truth for MRR and customer lifecycle metrics
- Limited connection between support activity and churn.

The goal:
Build a clean, testable, and scalable data model that supports executive-level revenue and retention decision-making.

## Methodology:

1. Data Modelling (ELT Approach)

Raw SaaS tables: accounts, subscriptions, invoices, payments, support tickets

Staging models: cleaned and standardised fields

Intermediate models: lifecycle logic (first order date, churn date, reactivation windows)

Metrics layer (monthly grain): MRR, churn rate, LTV, ARPU, reactivation rate

2. Transformation Layer (dbt)

Modular SQL models

Reusable CTE structure

Surrogate keys where necessary

Documented models and columns

3. Data Testing & Validation

Unique & not null tests

Relationship tests (foreign key integrity)

Custom logic tests (e.g., churn date > signup date)

4. CI/CD

Version-controlled via GitHub

dbt runs triggered through CI workflow

Automated checks before merge

5. Reporting Layer (Power BI)

Star schema built from metrics layer

Calendar table for cohort and MRR analysis

DAX measures for dynamic KPIs

Since `usage_id` was duplicated and had no foreign key dependencies, a surrogate primary key was introduced to enforce event-level uniqueness and preserve modelling integrity.

## Skills:
`SQL Modelling` `Data Test & Validation` `Documentation` `Continuous Integration & Deployment (CI/CD)` `Power BI Data Modelling` `DAX` `Data Visualization`

## Tools:
`dbt` `PostgreSQL` `Git/GitHub` `Power BI`

## Insights:

Revenue

Identified revenue concentration across top 20% of accounts

MRR growth primarily driven by expansion, not new signups

Retention

Reactivation rate declines sharply after 60 days of churn

Customers on higher-tier plans show lower churn probability

Support

High ticket volume correlates with churn within 30–45 days

Slow response time increases churn likelihood

## Recommendations:

Implement targeted reactivation campaigns within 30 days of churn

Monitor expansion revenue separately from new MRR

Introduce proactive support triggers for high-value accounts

Track support resolution time as a churn-risk KPI
___
