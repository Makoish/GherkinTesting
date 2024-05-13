Feature: Generate inventory report

    The user may display the current system inventory if they are an admin user

    Scenario: Admin generates inventory report

        Given User is an admin
        And The current inventory is in the table
        |name|quantity|price|
        |Acer|12|750|
        |Lenovo|3|900|
        |Apple|7|1200|

        When User presses the button to generate the inventory report

        Then Display the current inventory to the user


    Scenario: Non-admin generates inventory report

        Given User is not an admin
        And The current inventory is in the table
        |name|quantity|price|
        |Acer|12|750|
        |Lenovo|3|900|
        |Apple|7|1200|
    
        When User presses the button to generate the inventory report
    
        Then Dont display the current inventory to the user
        And Display an error message to the user
        """
        Error! You are not an admin
        """