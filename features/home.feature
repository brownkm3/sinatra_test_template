Feature: Accessing the service via a web page
  Scenario: Going to the lookup web site
    When I visit the lookup service
    Then I should see the lookup dialogue
    And I should see the view buildings link

  Scenario: Using bootstrap
    When I visit the lookup service
    Then I should see a page that is laid out properly
    And not looking like I drew it with a crayon

  Scenario Outline: Common links
    When I visit the <service_name> service
    Then I should see the add buildings link
    And I should see the view buildings link
    Examples:
      | service_name |
      | lookup       |
      | index        |
      | add          |
      | show         |
