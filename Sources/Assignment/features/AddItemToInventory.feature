Feature: Add item to inventory

    The user may add a quantity of an item to the inventory if they are an admin

    Scenario: Admin adds new item to inventory

        Given User is an admin
        And The current inventory is in the table
        |name|quantity|price|
        |Acer|12|750|
        |Lenovo|3|900|
        |Apple|7|1200|

        When User presses the button to add an item to the inventory
        And The name of the item to add is Dell
        And The quantity of the item to add is 20
        And The price of the item to add is 800
        And The item to add is not existing

        Then Add the new item to the inventory


    Scenario: Admin adds existing item to inventory at the same price

        Given User is an admin
        And The current inventory is in the table
        |name|quantity|price|
        |Acer|12|750|
        |Lenovo|3|900|
        |Apple|7|1200|
        |Dell|20|800|

        When User presses the button to add an item to the inventory
        And The name of the item to add is Dell
        And The quantity of the item to add is 20
        And The price of the item to add is 800
        And The item to add is existing
        And The price is the same

        Then Add the quantity to the existing item in the inventory


    Scenario: Admin adds existing item to inventory at a different price

        Given User is an admin
        And The current inventory is in the table
        |name|quantity|price|
        |Acer|12|750|
        |Lenovo|3|900|
        |Apple|7|1200|
        |Dell|20|800|

        When User presses the button to add an item to the inventory
        And The name of the item to add is Dell
        And The quantity of the item to add is 20
        And The price of the item to add is 1000
        And The item to add is existing
        But The price is not the same

        Then Dont add the item to the inventory
        And Display an error message to the user
        """
        Error! The item you are trying to add is not at the same price
        """