When "I visit the lookup service" do
  visit '/'
end

Then "I should see 'Hello'" do
  page.has_content?('Hello')
end

Then "I should see a page that is laid out properly" do
  page.has_content?('No llamas were harmed in the making of this website')
end

And "not looking like I drew it with a crayon" do
  page.has_content?('jquery')
end

Then "I should see the lookup dialogue" do
  page.has_content?('Enter building name')
  page.has_selector?('input[type=submit]')
end

And "I should see the view buildings link" do
  page.has_link?('View buildings')
end
