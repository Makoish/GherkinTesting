Feature: Create_Contact
              after login or sign up, user can create a contact,
              user can add a first name, last name, email, date of birth, email,phone number, address1, address2, city, state of province, postal code, and country

        Scenario: leave first name empty
            Given I am on the create contact page https://thinking-tester-contact-list.herokuapp.com/addContact
             When I leave the first name empty
              And I fill in the last name with Ashraf
             Then I should see a message Contact validation failed: firstName: Path `firstName` is required.

        Scenario: leave last name empty
            Given I am on the create contact page https://thinking-tester-contact-list.herokuapp.com/addContact
             When I fill in the first name with Ramy
              And I leave the last name empty
             Then I should see a message Contact validation failed: lastName: Path `lastName` is required.

        Scenario: fill first and last names but write the mail wrong
            Given I am on the create contact page https://thinking-tester-contact-list.herokuapp.com/addContact
             When I fill in the first name with Ramy
              And I fill in the last name with Ashraf
              And I fill in the email with ramyashraf
             Then I should see a message Contact validation failed: email: Email is invalid

        Scenario: fill fields correctlly but fill birth date wrong
            Given I am on the create contact page https://thinking-tester-contact-list.herokuapp.com/addContact
             When I fill in the first name with Ramy
              And I fill in the last name with Ashraf
              And I fill in the birth date with 90-2-30
             Then I should see a message Contact validation failed: birthdate: Birthdate is invalid

        Scenario: fill fields correctlly but fill postal code wrong
            Given I am on the create contact page https://thinking-tester-contact-list.herokuapp.com/addContact
             When I fill in the first name with Ramy
              And I fill in the last name with Ashraf
              And I fill in the postal code with test
             Then I should see a message Contact validation failed: postalCode: Path `postalCode` is required.

        Scenario: fill fields correctlly but fill phone number wrong
            Given I am on the create contact page https://thinking-tester-contact-list.herokuapp.com/addContact
             When I fill in the first name with Ramy
              And I fill in the last name with Ashraf
              And I fill in the phone number with test
             Then I should see a message Contact validation failed: phone: Phone number is invalid