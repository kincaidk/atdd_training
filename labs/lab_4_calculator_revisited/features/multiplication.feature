Feature: Multiplication
  I want my calculator to multiply numbers
  So I can know their product

  Scenario: Multiplying numbers to get a product
    When I multiply two numbers
    Then I get the product

  Scenario: Multiplying by zero
    When I multiply zero by a number
    Then the product is zero

  Scenario: Multiplying by one
    When I multiply one by a number
    Then the product is the number

  Scenario: The commutative property DOES apply to multiplication between numbers
    When I multiply numbers in different orders
    Then the products are the same

  Scenario: Multiplying more than two numbers
    When I multiply more than two numbers
    Then I get the product

  Scenario: Multiplying a negative number by a positive number
    When I multiply a negative number by a positive number
    Then the product will be negative

  Scenario: Multiplying a negative number by a negative number
    When I multiply a negative number by a negative number
    Then the product will be positive