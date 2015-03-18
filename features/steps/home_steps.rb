When "I visit the lookup service" do
  visit '/'
end

Then "I should see 'Hello'" do
  expect(page.body).to have_content('Hello')
end

Then "I should see a page that is laid out properly" do
  expect(page.body).to have_content('No llamas were harmed in the making of this website')
end

And "not looking like I drew it with a crayon" do
  expect(page.body).to have_content('subtle_white_feathers.png')
end

Then "I should see the lookup dialogue" do
  expect(page.body).to have_content('Enter building name')
  expect(page.body).to have_selector('input[type=submit]')
end

And "I should see the view buildings link" do
  expect(page.body).to have_link('View buildings')
end
Then "I should see the add buildings link" do
  expect(page.body).to have_link('Add building')
end

When "I visit the index service" do
  visit '/buildings'
end

When "I visit the add service" do
  visit '/buildings/new'
end

When "I visit the show service" do
  visit '/buildings/show'
end
