# What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.order("population_over_65_in_2005 desc").limit(3)

# What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.order("population_under_20_in_2005 desc").limit(3)

# What 5 towns have the lowest per capita income?
TownHealthRecord.order("income_per_capita_in_2005 asc").limit(5)

# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.order("percent_teen_births_2005_to_2008 desc").where.not(city: "Boston").where.not(city: "Becket").where.not(city: "Beverly").limit(1)

# Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.order("infant_mortality_rate_2005_to_2008 desc").where.not(city: "Boston").limit(1)
