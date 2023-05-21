-- Show all the rows and columns of the cleaned_covid19_data
SELECT *
FROM cleaned_covid19_data

-- Total number of confirmed cases in Nigeria for the time preiod of this analysis 
SELECT SUM(confirmed) as TotalConfirmedCases
FROM cleaned_covid19_data

-- Total number of death cases in Nigeria for the time preiod of this analysis 
SELECT SUM(deaths) as TotalDeathCases
FROM cleaned_covid19_data

-- Total number of recovered cases in Nigeria for the time preiod of this analysis 
SELECT SUM(recovered) as TotalRecoveredCases
FROM cleaned_covid19_data

-- Mortality rate in Nigeria during this time period
SELECT ROUND((SUM(deaths) * 100.00/ SUM(confirmed)),2) AS MortalityRate
FROM cleaned_covid19_data

-- Recovery rate in Nigeria during this time period
SELECT ROUND((SUM(recovered) * 100.00/ SUM(confirmed)),2) AS RecoveryRate
FROM cleaned_covid19_data

--- Daily average of confirmed cases
SELECT AVG(confirmed) as AverageConfirmedCases
FROM cleaned_covid19_data

--- Daily average of death cases
SELECT AVG(deaths) as AverageDeathCases
FROM cleaned_covid19_data

--- Daily average of recovered cases
SELECT AVG(recovered) as AverageRecoveredCases
FROM cleaned_covid19_data

--- Monthly average of death cases
SELECT month_year, AVG(deaths) as MontlyAverageDeathCases
FROM cleaned_covid19_data
GROUP BY month_year
ORDER BY month_year

--- Monthly average of recovered cases
SELECT month_year, AVG(recovered) as MontlyAverageRecoveredCases
FROM cleaned_covid19_data
GROUP BY month_year
ORDER BY month_year

-- State most affected by the pandemic
SELECT state , sum(confirmed) AS ConfirmedPerState, sum(deaths) AS DeathsPerState, sum(recovered) AS RecoveredPerState
FROM cleaned_covid19_data
GROUP BY state
ORDER BY ConfirmedPerState Desc, DeathsPerState Desc, RecoveredPerState Desc