Feature: add_to_cart

    The user should be able to add to cart


    Scenario: add item 1 to cart as standard_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        And I click on button number 1

        Then the cart number should be 1


    Scenario: add item 2 to cart as standard_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        And I click on button number 2

        Then the cart number should be 1

    Scenario: add item 3 to cart as standard_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        And I click on button number 3

        Then the cart number should be 1

    Scenario: add item 4 to cart as standard_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        And I click on button number 4

        Then the cart number should be 1

    Scenario: add item 5 to cart as standard_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        And I click on button number 5

        Then the cart number should be 1

    Scenario: add item 6 to cart as standard_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        And I click on button number 6

        Then the cart number should be 1

    ############################# PROBLEM USER #############################

    Scenario: add item 1 to cart as problem_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password problem_user secret_sauce

        And I click on button number 1

        Then the cart number should be 1


    Scenario: add item 2 to cart as problem_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password problem_user secret_sauce

        And I click on button number 2

        Then the cart number should be 1

    Scenario: add item 3 to cart as problem_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password problem_user secret_sauce

        And I click on button number 3

        Then the cart number should be 0

    Scenario: add item 4 to cart as problem_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password problem_user secret_sauce

        And I click on button number 4

        Then the cart number should be 0

    Scenario: add item 5 to cart as problem_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password problem_user secret_sauce

        And I click on button number 5

        Then the cart number should be 1

    Scenario: add item 6 to cart as problem_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password problem_user secret_sauce

        And I click on button number 6

        Then the cart number should be 0

    ############################# performance_glitch_user USER #############################

    Scenario: add item 1 to cart as performance_glitch_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password performance_glitch_user secret_sauce

        And I click on button number 1

        Then the cart number should be 1


    Scenario: add item 2 to cart as performance_glitch_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password performance_glitch_user secret_sauce

        And I click on button number 2

        Then the cart number should be 1

    Scenario: add item 3 to cart as performance_glitch_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password performance_glitch_user secret_sauce

        And I click on button number 3

        Then the cart number should be 1

    Scenario: add item 4 to cart as performance_glitch_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password performance_glitch_user secret_sauce

        And I click on button number 4

        Then the cart number should be 1

    Scenario: add item 5 to cart as performance_glitch_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password performance_glitch_user secret_sauce

        And I click on button number 5

        Then the cart number should be 1

    Scenario: add item 6 to cart as performance_glitch_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password performance_glitch_user secret_sauce

        And I click on button number 6

        Then the cart number should be 1

    
    ############################# error_user USER #############################

    Scenario: add item 1 to cart as error_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password error_user secret_sauce

        And I click on button number 1

        Then the cart number should be 1


    Scenario: add item 2 to cart as error_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password error_user secret_sauce

        And I click on button number 2

        Then the cart number should be 1

    Scenario: add item 3 to cart as error_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password error_user secret_sauce

        And I click on button number 3

        Then the cart number should be 0

    Scenario: add item 4 to cart as error_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password error_user secret_sauce

        And I click on button number 4

        Then the cart number should be 0

    Scenario: add item 5 to cart as error_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password error_user secret_sauce

        And I click on button number 5

        Then the cart number should be 1

    Scenario: add item 6 to cart as error_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password error_user secret_sauce

        And I click on button number 6

        Then the cart number should be 0

    
    ############################# visual_user USER #############################

    Scenario: add item 1 to cart as visual_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password visual_user secret_sauce

        And I click on button number 1

        Then the cart number should be 1


    Scenario: add item 2 to cart as visual_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password visual_user secret_sauce

        And I click on button number 2

        Then the cart number should be 1

    Scenario: add item 3 to cart as visual_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password visual_user secret_sauce

        And I click on button number 3

        Then the cart number should be 1

    Scenario: add item 4 to cart as visual_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password visual_user secret_sauce

        And I click on button number 4

        Then the cart number should be 1

    Scenario: add item 5 to cart as visual_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password visual_user secret_sauce

        And I click on button number 5

        Then the cart number should be 1

    Scenario: add item 6 to cart as visual_user 

        When I open the website https://www.saucedemo.com/

        And I enter username and password visual_user secret_sauce

        And I click on button number 6

        Then the cart number should be 1




