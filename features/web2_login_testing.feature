Feature: LOGIN
              as the user enters the login page,
                the user should see the login form, with the following fields:
                - email
                - password
                - submit button
                - button to the registration page
              as the fields are filled in, the user should be able to login.

        Scenario: entering correct email but wrong password
            Given the user is on the login page https://thinking-tester-contact-list.herokuapp.com/
             When the user enters the email "ramy@gmail.com"
              And the user enters the password "1234567"
              And the user clicks the submit button
             Then the user should see an error message Incorrect username or password

        Scenario: entering correct email but in mix of capital and small characters
            Given the user is on the login page https://thinking-tester-contact-list.herokuapp.com/
             When the user enters the email "RaMy@gmail.com"
              And the user enters the password "1234567"
              And the user clicks the submit button
             Then the user should be directed to the contact list page https://thinking-tester-contact-list.herokuapp.com/contactList

        Scenario: entering password in mix of capital and small characters
            Given the user is on the login page https://thinking-tester-contact-list.herokuapp.com/
             When the user enters the email "mohsen@gmail.com"
              And the user enters the password "TeSt1234"
              And the user clicks the submit button
             Then the user should see an error message Incorrect username or password

        Scenario: entering correct email and password
            Given the user is on the login page https://thinking-tester-contact-list.herokuapp.com/
             When the user enters the email "mohsen@gmail.com"
              And the user enters the password "test1234"
              And the user clicks the submit button
             Then the user should be directed to the contact list page https://thinking-tester-contact-list.herokuapp.com/contactList