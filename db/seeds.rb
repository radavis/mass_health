# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

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

# load data into hash
records = []
CSV.foreach('db/data/mass_chip_data.csv',
  { :headers => true,
    :header_converters => :symbol,
    :converters => :all }) do |row|
  records << row.to_hash
end

# remove commas in numerical data
records.each do |record|
  record.each do |key, value|
    if value.is_a?(String) and value.match(/[$\s,]/) and key != :city
      record[key] = value.gsub(/[$\s,]/, '').to_i
    end
  end
end

# load into db
records.each do |record|
  db_record = TownHealthRecord.find_or_initialize_by(city: record[:city])
  db_record.update_attributes(record)
  db_record.save!
end
