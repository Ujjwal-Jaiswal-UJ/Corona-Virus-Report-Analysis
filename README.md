# Corona Virus Analysis using PostgreSQL

## Introduction
Welcome to our project, Corona Virus Analysis using PostgreSQL. This project aims to provide a comprehensive analysis of COVID-19 data using PostgreSQL, a powerful and open-source object-relational database system. Our objective is to solve complex queries on two primary datasets: CovidDeaths and CovidVaccinations.

The CovidDeaths dataset includes confirmed cases and deaths data collected daily from the World Health Organization Coronavirus Dashboard. The CovidVaccinations dataset, on the other hand, contains data on COVID-19 testing and vaccinations, collected by the Our World in Data team from official reports.

To analyze these datasets, we have created a PostgreSQL database named Covid_Analysis, with two tables Covid_Deaths and Covid_Vaccinations. After importing the datasets into these tables, we have started building logic and writing query statements to solve 11 different problem statements related to the datasets.

## Project Objective
The primary objective of this project, Corona Virus Analysis using PostgreSQL, is to enhance and apply PostgreSQL skills in a practical and impactful manner. By working with real-world datasets related to the COVID-19 pandemic, the project provides an opportunity to solve complex queries and gain a deeper understanding of data analysis using PostgreSQL. 

The goal is not only to extract valuable insights from the data but also to contribute to the broader understanding of the ongoing global health crisis. Through this hands-on experience, the project aims to significantly improve PostgreSQL proficiency and readiness to tackle real-world data challenges.

# Deployment
## Dataset
The dataset for the project work is collected using the below link
Covid-19 Dataset - https://ourworldindata.org/covid-cases

After downloading the dataset into the local computer, I have seperate the dataset into two dataset based on Covid-19 Deaths and Covid-19 Vaccination.

The `CovidDeaths` dataset includes records for:
- `iso_code` 
- `continent`
- `location`
- `date`
- `population`
- `total_cases`
- `new_cases`
- `total_deaths`
- `new_death`
- `total_death_per_million`
- `new_death_per_million`
- `reproduction_rate`
- `icu_patients`
- `hosp_patients`
- `weekly_icu_admissions`
- `weekly_hosp_admissions`

These records provide comprehensive information about the confirmed cases, deaths, and hospitalization details related to COVID-19.

The `CovidVaccinations` dataset contains records of:
- `iso_code`
- `continent`
- `location`
- `date`
- `total_tests`
- `new_tests`
- `positive_rate`
- `tests_per_case`
- `tests_units`
- `total_vaccinations`
- `people_vaccinated`
- `people_fully_vaccinated`
- `total_boosters`
- `new_vaccinations`
- `stringency_index`
- `population_density`
- `median_age`
- `aged_65_older`
- `aged_70_older`
- `gdp_per_capita`
- `extreme_poverty`
- `cardiovasc_death_rate`
- `diabetes_prevalence`
- `handwashing_facilities`
- `life_expectancy`
- `human_development_index`
- `excess_mortality_cumulative`
- `excess_mortality`

These records provide a detailed overview of the testing and vaccination efforts against COVID-19, along with other demographic and health-related data.

## Problem Statement
The **Corona Virus Analysis using PostgreSQL** project is a comprehensive data analysis initiative that leverages PostgreSQL to solve complex queries on COVID-19 data. The project focuses on two primary datasets: `CovidDeaths` and `CovidVaccinations`, which contain a wealth of information about the global impact of the COVID-19 pandemic.

The project aims to answer 11 specific questions related to the datasets which was provides as Question_Queries.txt file.

By solving these queries, the project aims to provide valuable insights into the COVID-19 pandemic and contribute to the global understanding of this unprecedented health crisis. This project serves as a practical application of PostgreSQL skills, demonstrating the power of SQL in handling and analyzing large datasets.

## Implementation
Database Creation: I started by creating a database named Covid_Analysis in the PostgreSQL dashboard. This database serves as the central repository where all the data related to the project is stored.
Table Creation: Under the schema of the Covid_Analysis database, I created two tables: Covid_Deaths and Covid_Vaccination. These tables are designed to hold the specific datasets I am working with.
Column Creation: For both Covid_Deaths and Covid_Vaccination tables, I created columns that correspond to the fields in the CSV dataset files. This step ensures that the structure of the tables matches the structure of the datasets, allowing for seamless data import.
Data Import: Using the Import/Export Data option in PostgreSQL, I imported the data from the CSV files into the corresponding tables in Covid_Analysis database. This step populated the tables with the actual data I’ll be analyzing.
Understanding the Problem Statement: With the data in place, I then took the time to understand the problem statements provided to me. This involved logical and critical thinking to determine what kind of queries I need to build to answer these questions.
Building SQL Queries: Based on my understanding of the problem statements, I started building SQL query statements. These queries are designed to extract the specific information needed from the datasets to answer the problem statements.
Saving the Script: After writing the SQL queries, I saved the work as a SQL file named Covid19 Analysis. This allows me to revisit, revise, and run the queries in the future.


