Feature: Advanced search
  As a user, I want to be able to search items by their number or seller,
  store by its name and see search tips in order to easily search items on eBay.

  Background: Advanced search page is opened
  Given I am on the Ebay Advanced search page

  Scenario Outline: Verify that user can find item by number
    When I enter item number <number> in the 'Enter keywords or item number' field
    And I click on the "top" search button
    Then I should see <item title>

    Examples: Items
      |    number      | item title                                                                  |
      |   "2B040H"     | "Sudee+ Intensive Nourishing Mask 25g x 5ea Anti Wrinkle Soothing K-Beauty" |
      |   "PKU85147"   | "Elite Trainer Box ETB Crown Zenith Pokemon"                                |
      | "174937115870" | "No exact matches found"                                                    |

  Scenario: Verify that user can search by store name
    When I click 'Find Stores' link
    And I enter "Samsung" in the 'Enter Store name or keywords' field
    And I click on the "top" search button
    Then I should see "Welcome to the official Samsung Store!"

  Scenario: Verify that user can search by seller
    When I click 'By seller' link
    And I enter "Samsung" in the seller name field
    And I click on the "bottom" search button
    Then I should see "Samsung"

  Scenario: Verify that Search tips link is opening successfully
    When I click hint search tips
    Then I should see "General search tips"

