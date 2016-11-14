Feature: Location Sharing feature

  @reinstall
  Scenario: As a valid user I am reinstall apps
    When I install apps

  @location_sharing
  Scenario: As a valid user I can log into Zenly app and share my location temporarily
    When I launch app
    Then I see Welcome message
    Then I should see settings
    And I see ghost button
    And I see Google map
    Then I tap on ghost button
    And I should see Precise and SelectAll
    Then I tap Back
    Then I should see Friends icon
    Then I tap on Sharing
    And I tap on email option
    And I enter email id "arulami@gmail.com"
    And I verify Zenly default Subject and message content
    Then I tap send
    Then I should see Sharing started screen
    And I should see counter
    And I should see Extend "15" mins and stop button
    And I see position shared url


