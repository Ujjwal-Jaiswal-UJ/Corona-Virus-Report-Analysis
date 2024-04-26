-- Datewise likelihood of dying due to covid19 i.e. TotalCases vs TotalDeath in country India
select date, total_cases, total_deaths from "Covid_Deaths"
where location like '%India%'