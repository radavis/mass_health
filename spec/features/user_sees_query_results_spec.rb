require 'spec_helper'

feature 'user can see the results of a query on the TownHealthRecord database', %q{
  As a visitor
  I want to see Mass Health information about my state
  So that I can know more about Massachusetts
} do

  scenario 'user clicks on a query statement' do
    visit root_path
    click_on 'Population In 2005'
    expect(page).to have_content("Population")
    expect(page).to have_content("Boston")
  end

end
