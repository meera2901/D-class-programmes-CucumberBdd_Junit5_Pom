Feature: Register new user and Login to nop commerce

  Background: navigate to url
    Given I navigate to url "https://demo.nopcommerce.com/"
    Then  I should be navigated to home page


  Scenario: Register new user by providing data in all mandatory fields

    When I click on register link
    Then I should be navigated to register page
    When I select gender
    And  I enter firstName lastName email password confirmPassword
      | firstName| lastName|    email        |password |confirmPassword|
      |   test1   |  user1 |testuser123@nop.com|testing  |   testing     |

    And I click on register button
    Then registration should be successful



  Scenario: Verify login with valid credentials

    When  I click on login link from navbar
    Then  I should be able to navigated to login page
    When  I enter email 'testuser123@nop.com'
    And   I enter password 'testing'
    And   I click on login button
    Then  I should be logged in successfully



