Feature: Google Search functionality


  Scenario: User can search for a specific item on Google
    Given a user goes to Google
    When they search for "pens"
    Then Google should search for "pens"