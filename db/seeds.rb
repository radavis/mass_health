# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

# columns
#
# Geography
# "total pop, year 2005"
# "age 0-19, year 2005"
# "age 65+, year 2005"
# "Per Capita Income, year 2000"
# "Persons Living Below 200% Poverty, year 2000 "
# "% all Persons Living Below 200% Poverty Level, year 2000"
# % adequacy prenatal care (kotelchuck)
# "% C-section deliveries, 2005-2008"
# "Number of infant deaths, 2005-2008"
# "Infant mortality rate (deaths per 1000 live births), 2005-2008"
# % low birthweight 2005-2008
# "% multiple births, 2005-2008"
# "% publicly financed prenatal care, 2005-2008"
# "% teen births, 2005-2008",,



# better column names (applied to csv)

# city
# population_in_2005
# population_under_20_in_2005
# population_over_65_in_2005
# income_per_capita_in_2005
# population_200_percent_below_poverty_in_2000
# percent_population_200_percent_below_poverty_in_2000
# kotelchuck_index
# percent_c_section_deliveries_2005_to_2008
# infant_deaths_2005_to_2008
# infant_mortality_rate_2005_to_2008
# percent_low_birthweight_2005_to_2008
# percent_multiple_births_2005_to_2008
# percent_publicly_financed_prenatal_care_2005_to_2008
# percent_teen_births_2005_to_2008


seed = []
CSV.foreach('db/mass_chip_data.csv',
  { :headers => true,
    :header_converters => :symbol,
    :converters => :all }) do |row|

  #p row
  seed << row
end

# remove commas and bullshit in numerical data
seed.each do |s|
  s.each do |k, v|
    v = v.gsub(/[$\s\']/, '')
  end
end

p seed
