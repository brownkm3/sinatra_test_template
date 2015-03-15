When "I visit the lookup service" do
  visit '/'
end

Then "I should see 'Hello'" do
  expect(page.body).to have_content('Hello')
end


Then "I should see the lookup dialogue" do
  expect(page.body).to have_content('Enter building name')
  expect(page.body).to have_button('Look-up')
end

And "I should see the view buildings link" do
  expect(page.body).to have_link('View buildings')
end
