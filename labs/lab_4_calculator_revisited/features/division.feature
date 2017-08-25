Feature: Division
  I want my calculator to divide numbers
  So I can know their quotient

  Scenario: Dividing numbers to get a quotient
    When I divide two numbers
    Then I get the quotient

  Scenario: Dividing zero by a number
    When I divide zero by a number
    Then the quotient is zero

  Scenario: Dividing by zero
    When I divide by zero
    Then an error is raised.

  Scenario: Dividing by one
    When I divide a number by one
    Then the quotient is the number

  Scenario: The commutative property does NOT apply to division between numbers that are NOT equal
    When I divide numbers that are NOT equal, in different orders
    Then the quotients are different

  Scenario: The commutative property does NOT apply to division between numbers that are equal
    When I divide numbers that are equal, in different orders
    Then the quotients are both one

  Scenario: Dividing more than two numbers
    When I divide more than two numbers
    Then I will get the quotient

  Scenario: Dividing a negative number by a positive number
    When I divide a negative number by a positive number
    Then the quotient will be negative

  Scenario: Dividing a negative number by a negative number
    When I divide a negative number by a negative number
    Then the quotient will be positive