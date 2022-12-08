CREATE VIEW [v_CovidConfirmedCaseCountByRegion] AS
SELECT dbo.covid_19_data$.Region as Region, COUNT(dbo.covid_19_data$.Confirmed) as Confirmed_Case_Count 
FROM dbo.covid_19_data$
GROUP BY dbo.covid_19_data$.Region;


CREATE VIEW [v_CovidDeathCountByRegion] 
AS
SELECT dbo.covid_19_data$.Region as Region, COUNT(dbo.covid_19_data$.Deaths) as Death_Case_Count 
FROM dbo.covid_19_data$
GROUP BY dbo.covid_19_data$.Region;



