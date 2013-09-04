class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :city
      t.integer :population_in_2005
      t.integer :population_under_20_in_2005
      t.integer :population_over_65_in_2005
      t.integer :income_per_capita_in_2005
      t.float :population_200_percent_below_poverty_in_2000
      t.float :percent_population_200_percent_below_poverty_in_2000
      t.float :kotelchuck_index
      t.float :percent_c_section_deliveries_2005_to_2008
      t.integer :infant_deaths_2005_to_2008
      t.float :infant_mortality_rate_2005_to_2008
      t.float :percent_low_birthweight_2005_to_2008
      t.float :percent_multiple_births_2005_to_2008
      t.float :percent_publicly_financed_prenatal_care_2005_to_2008
      t.float :percent_teen_births_2005_to_2008

      t.timestamps
    end
  end
end
