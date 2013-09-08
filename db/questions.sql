-- What 3 towns have the highest population of citizens that are 65 years and older?
select city, population_over_65_in_2005
from town_health_records
order by population_over_65_in_2005 desc
limit 3;

-- city        population_over_65_in_2005
-- ----------  --------------------------
-- Boston      59950
-- Worcester   23062
-- Springfiel  18271


-- What 3 towns have the highest population of citizens that are 19 years and younger?
select city, population_under_20_in_2005
from town_health_records
order by population_under_20_in_2005 desc
limit 3;

-- city        population_under_20_in_2005
-- ----------  ---------------------------
-- Boston      131435
-- Worcester   48217
-- Springfiel  47878


-- What 5 towns have the lowest per capita income?
select city, income_per_capita_in_2005
from town_health_records
order by income_per_capita_in_2005 asc
limit 5;

-- city        income_per_capita_in_2005
-- ----------  -------------------------
-- Monroe      12400
-- Lawrence    13360
-- Chelsea     14628
-- Springfiel  15232
-- Gosnold     15265


-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
select city, percent_teen_births_2005_to_2008
from town_health_records
where city not like 'boston'
and city not like 'becket'
and city not like 'beverly'
order by percent_teen_births_2005_to_2008 desc
limit 1;

-- city        percent_teen_births_2005_to_2008
-- ----------  --------------------------------
-- Holyoke     23.27


-- Omitting Boston, what town has the highest number of infant mortalities?
select city, infant_mortality_rate_2005_to_2008
from town_health_records
where city not like 'boston'
order by infant_mortality_rate_2005_to_2008 desc
limit 1;

-- city        infant_mortality_rate_2005_to_2008
-- ----------  ----------------------------------
-- Gardner     12.44
