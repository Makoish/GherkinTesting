Feature: Edit item in inventory

    The user may edit an item entry in the inventory if they are an admin

    Scenario: Admin edits an existing item in inventory

        Given User is an admin
        And The current inventory is in the table
        |name|quantity|price|
        |Acer|12|750|
        |Lenovo|3|900|
        |Apple|7|1200|
        |Dell|20|800|

        When User presses the button to edit an item in the inventory
        And The name of the item to edit is Dell
        And The price of the item to edit is 1000
        And The item to edit is existing

        Then Edit the existing item in the inventory


    Scenario: Admin edits a non-existing item in inventory

        Given User is an admin
        And The current inventory is in the table
        |name|quantity|price|
        |Acer|12|750|
        |Lenovo|3|900|
        |Apple|7|1200|

        When User presses the button to edit an item in the inventory
        And The name of the item to edit is Dell
        And The item to edit is not existing

        Then Dont edit the item in the inventory
        And Display an error message to the user
        """
        Error! You are trying to edit an item that is not in the inventory
        """