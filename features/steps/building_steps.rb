require "building"

Given "There are buildings in the database" do
  Building.create(building_name: "Orion", building_code: "AP_MLB")
  Building.create(building_name: "Oberon", building_code: "AP_OBE")
end

When "I go to the buildings page" do
  visit '/buildings'
end
Then "I should see a list of buildings" do
  expect(page.body).to have_content('Orion')
end
When "I search for a building code using a valid building name" do
  visit '/'
  fill_in('building_name', :with => 'Orion')
  click_button('Look-up')
end

Then "I should see the building code for that building" do
  expect(page.body).to have_content('AP_MLB')
end
