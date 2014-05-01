Feature: ATM operations

  Scenario: Withdraw money from your own account
    Given I have $100 in my account
    When I withdraw $20
    Then I should get $20
    And My account balance should be $80