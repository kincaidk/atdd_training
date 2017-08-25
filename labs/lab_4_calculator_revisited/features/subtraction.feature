Feature: Subtraction
  I want my calculator to subtract numbers
  So I can know their difference

  Scenario: Subtracting numbers to get a difference
    When I subtract two numbers
    Then I get the difference

  Scenario: Subtracting a number by zero
    When I subtract a number by zero
    Then the difference will be the number

  Scenario: The commutative property does NOT apply to subtraction between numbers that are NOT equal
    When I subtract numbers that are not equal, in different orders
    Then the differences are different

  Scenario: The commutative property does NOT apply to division between numbers that ARE equal
    When I subtract numbers that are equal, in different orders
    Then the differences are both 0

  Scenario: Subtracting more than two numbers
    When I subtract more than two numbers
    Then I get the difference

  Scenario: Subtracting a negative number by a positive number
    When I subtract a negative number by a positive number
    Then the difference will be negative

  Scenario: Subtracting a positive number by a negative number
    When I subtract a positive number by a negative number
    Then the difference will be positive