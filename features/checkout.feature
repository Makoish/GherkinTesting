Feature: Checkout cart

    The user should be able to checkout their purchased items

    Scenario: Checkout as standard user
    
        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        And I click on button number 1

        And I click on the cart button

        And I click on the checkout button

        And I enter ahmed in the checkout first name field

        And I enter mohamed in the checkout last name field

        And I enter 74526 in the checkout zip code field

        And I click on the continue button

        And I click on the finish button

        Then The order is completed successfully