Feature: SIGNUP
    The user should be able to open a website

    Scenario: adding only numbers in first name while last Name and email are correct
        Given I am on the signup page
        When I enter "123" in the first name field
        And I enter "Ashraf" in the last name field
        And I enter "test@gmail.com" in the email field
        And I enter "123456" in the password field
        And I click the submit button
        Then the user will be signed up successfully

    Scenario: adding only numbers in last name while first Name and email are correct
        Given I am on the signup page
        When I enter "Ashraf" in the first name field
        And I enter "123" in the last name field
        And I enter "test@gmail.com" in the email field
        And I enter "123456" in the password field
        And I click the submit button
        Then the user will be signed up successfully

    Scenario: adding email address without domain name while other fields are correct
        Given I am on the signup page
        When I enter "Ashraf" in the first name field
        And I enter "Ashraf" in the last name field
        And I enter "test" in the email field
        And I enter "123456" in the password field
        And I click the submit button
        Then the user will not be able to sign up successfully

    Scenario: adding email address without @ symbol while other fields are correct
        Given I am on the signup page
        When I enter "Ashraf" in the first name field
        And I enter "Ashraf" in the last name field
        And I enter "testgmail.com" in the email field
        And I enter "123456" in the password field
        And I click the submit button
        Then the user will not be able to sign up successfully

    Scenario: adding email without the "\..{3}"
        Given I am on the signup page
        When I enter "Ashraf" in the first name field
        And I enter "Ashraf" in the last name field
        And I enter "test@gmail" in the email field
        And I enter "123456" in the password field
        And I click the submit button
        Then the user will not be able to sign up successfully

    Scenario: leaving the first name field empty
        Given I am on the signup page
        When I enter "" in the first name field
        And I enter "Ashraf" in the last name field
        And I enter "test@gmail.com" in the email field
        And I enter "123456" in the password field
        And I click the submit button
        Then the user will not be able to sign up successfully

    Scenario: leaving the last name field empty
        Given I am on the signup page
        When I enter "Ashraf" in the first name field
        And I enter "" in the last name field
        And I enter "test@gmail.com" in the email field
        And I enter "123456" in the password field
        And I click the submit button
        Then the user will not be able to sign up successfully

    Scenario: leaving the email field empty
        Given I am on the signup page
        When I enter "Ramy" in the first name field
        And I enter "Ashraf" in the last name field
        And I enter "" in the email field
        And I enter "123456" in the password field
        And I click the submit button
        Then the user will not be able to sign up successfully

    Scenario: leaving the password field empty
        Given I am on the signup page
        When I enter "Ramy" in the first name field
        And I enter "Ashraf" in the last name field
        And I enter "test2gmail.com" in the email field
        And I enter "" in the password field
        And I click the submit button
        Then the user will not be able to sign up successfully

    Scenario: adding an already registered email address
        Given I am on the signup page
        When I enter "Ramy" in the first name field
        And I enter "Ashraf" in the last name field
        And I enter "test@gmail.com" in the email field
        And I enter "123456" in the password field
        And I click the submit button
        Then the user will not be able to sign up successfully

    Scenario: adding correct email un-registered address
        Given I am on the signup page
        When I enter "Ramy" in the first name field
        And I enter "Ashraf" in the last name field
        And I enter "test@gmail.com" in the email field
        And I enter "123456" in the password field
        And I click the submit button
        Then the user will be signed up successfully