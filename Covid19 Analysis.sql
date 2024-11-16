-- I. The chronological probability of death due to COVID-19 in India, comparing total cases versus total deaths.
select date, total_cases, total_deaths from "Covid_Deaths"
where location like '%India%'

-- II. The percentage of total deaths from the entire population in India.
select (max(total_deaths)/avg(cast(population as integer))*100) from "Covid_Deaths" 
where location like '%India%'

--  III. Manually validate the statement II by gathering information separately.
select total_deaths, population from "Covid_Deaths"
where location like '%India' -- 531564/1417173120=0.0003750   0.0003750*100=0.03750

-- IV. The country with the highest percentage of deaths relative to its population.
select location, (max(total_deaths)/avg(cast(population as bigint))*100) as percentage from "Covid_Deaths"
group by location
order by percentage desc

-- V. The total percentage of positive COVID-19 cases in India.
select (max(total_cases)/avg(cast(population as bigint))*100) as india_positve_percentage from "Covid_Deaths"
where location like '%India%'

-- VI. The total percentage of positive COVID-19 cases worldwide.
select location, (max(total_cases)/avg(cast(population as bigint))*100) as world_positive_percentage from "Covid_Deaths"
group by location
order by world_positive_percentage desc

-- VII. The distribution of positive cases by continent.
select location, max(total_cases) as total_cases from "Covid_Deaths" 
where continent is null group by location
order by total_cases desc

-- VIII. The distribution of deaths by continent.
select location, max(total_deaths) as total_deaths from "Covid_Deaths"
where continent is null group by location
order by total_deaths desc

-- IX. A comparison of daily new cases, hospitalizations, and ICU patients in India.
select date , new_cases, hosp_patients, icu_patients from "Covid_Deaths"
where location like '%India%'

-- X. The distribution of people aged 65 and above by country.
select "Covid_Deaths".date, "Covid_Deaths".location, "Covid_Vacination".aged_65_older 
from "Covid_Deaths" join "Covid_Vacination" on "Covid_Deaths".iso_code="Covid_Vacination".iso_code and "Covid_Deaths".date="Covid_Vacination".date

-- XI. The total number of vaccinated individuals by country.
select "Covid_Deaths".location as country, (max("Covid_Vacination".people_fully_vacinated)) as Fully_Vaccinated 
from "Covid_Deaths" join "Covid_Vacination" on "Covid_Deaths".iso_code="Covid_Vacination".iso_code and "Covid_Deaths".date="Covid_Vacination".date
where "Covid_Deaths".continent is not null group by country
order by Fully_Vaccinated desc
