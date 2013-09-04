# What 3 towns have the highest population of citizens that are 65 years and older?
select city from town_health_records order by population_over_65_in_2005 desc limit 3 offset 1;

# What 3 towns have the highest population of citizens that are 19 years and younger?
select city from town_health_records order by population_under_20_in_2005 desc limit 3 offset 1;

# What 5 towns have the lowest per capita income?


# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?


# Omitting Boston, what town has the highest number of infant mortalities?

