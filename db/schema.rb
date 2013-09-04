# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130904174209) do

  create_table "town_health_records", force: true do |t|
    t.string   "city"
    t.integer  "population_in_2005"
    t.integer  "population_under_20_in_2005"
    t.integer  "population_over_65_in_2005"
    t.integer  "income_per_capita_in_2005"
    t.float    "population_200_percent_below_poverty_in_2000"
    t.float    "percent_population_200_percent_below_poverty_in_2000"
    t.float    "kotelchuck_index"
    t.float    "percent_c_section_deliveries_2005_to_2008"
    t.integer  "infant_deaths_2005_to_2008"
    t.float    "infant_mortality_rate_2005_to_2008"
    t.float    "percent_low_birthweight_2005_to_2008"
    t.float    "percent_multiple_births_2005_to_2008"
    t.float    "percent_publicly_financed_prenatal_care_2005_to_2008"
    t.float    "percent_teen_births_2005_to_2008"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
