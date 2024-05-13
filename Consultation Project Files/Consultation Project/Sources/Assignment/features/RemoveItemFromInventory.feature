Feature: Remove item from inventory

    The user may remove a quantity of an item from the inventory if they are an admin

    Scenario: Admin removes an existing quantity of an existing item from inventory

        Given User is an admin
        And The current inventory is in the table
        |name|quantity|price|
        |Acer|12|750|
        |Lenovo|3|900|
        |Apple|7|1200|
        |Dell|20|800|

        When User presses the button to remove an item from the inventory
        And The name of the item to remove is Dell
        And The quantity of the item to remove is 15
        And The item to remove is existing
        And The quantity is existing

        Then Remove the quantity of item from the inventory


    Scenario: Admin removes all of an existing item from inventory

        Given User is an admin
        And The current inventory is in the table
        |name|quantity|price|
        |Acer|12|750|
        |Lenovo|3|900|
        |Apple|7|1200|
        |Dell|20|800|

        When User presses the button to remove an item from the inventory
        And The name of the item to remove is Dell
        And The quantity of the item to remove is all
        And The item to remove is existing

        Then Remove all of the item from the inventory

    Scenario: Admin removes a non-existing quantity of an existing item from inventory

        Given User is an admin
        And The current inventory is in the table
        |name|quantity|price|
        |Acer|12|750|
        |Lenovo|3|900|
        |Apple|7|1200|
        |Dell|20|800|

        When User presses the button to remove an item from the inventory
        And The name of the item to remove is Dell
        And The quantity of the item to remove is 35
        And The item to remove is existing
        But The quantity is not existing

        Then Dont remove the quantity of item from the inventory
        And Display an error message to the user
        """
        Error! You are trying to remove more than there is in the inventory
        """

    Scenario: Admin removes a non-existing item from inventory

        Given User is an admin
        And The current inventory is in the table
        |name|quantity|price|
        |Acer|12|750|
        |Lenovo|3|900|
        |Apple|7|1200|

        When User presses the button to remove an item from the inventory
        And The name of the item to remove is Dell
        But The item to remove is not existing

        Then Dont remove the item from the inventory
        And Display an error message to the user
        """
        Error! You are trying to remove an item that is not in the inventory
        """