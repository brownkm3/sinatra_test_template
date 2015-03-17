Feature: Accessing the service via a web page
  Scenario: Going to the lookup web site
       When I visit the lookup service
       Then I should see the lookup dialogue
        And I should see the view buildings link

  Scenario: Using bootstrap
      When I visit the lookup service
      Then I should see a page that is laid out properly
       And not looking like I drew it with a crayon

  Scenario: Viewing a list of buildings
      Given There are buildings in the database
       When I go to the buildings page
       Then I should see a list of buildings

  Scenario: Looking up a building
      Given There are buildings in the database
       When I search for a building code using a valid building name
       Then I should see the building code for that building

  Scenario: Adding a building
      When I add a building
      Then I should see that building on the buildings page
