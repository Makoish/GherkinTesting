Feature: remove_from_home_page

    The user should be able to items from homepage


    

    Scenario: remove item 1 to cart as standard_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        And I click on button number 1

        And I click remove for button 1

        Then the cart number should be 0
        

    Scenario: remove item 2 to cart as standard_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        And I click on button number 2

        And I click remove for button 2

        Then the cart number should be 0


    Scenario: remove item 3 to cart as standard_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        And I click on button number 3

        And I click remove for button 3

        Then the cart number should be 0

    Scenario: remove item 4 to cart as standard_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        And I click on button number 4

        And I click remove for button 4

        Then the cart number should be 0

    Scenario: remove item 5 to cart as standard_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        And I click on button number 5

        And I click remove for button 5

        Then the cart number should be 0

    Scenario: remove item 6 to cart as standard_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        And I click on button number 6

        And I click remove for button 6

        Then the cart number should be 0

    ############# PROBLEM USER ################


    Scenario: remove item 1 to cart as problem_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password problem_user secret_sauce

        And I click on button number 1

        And I click remove for button 1

        Then the cart number should be 1

    Scenario: remove item 2 to cart as problem_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password problem_user secret_sauce

        And I click on button number 2

        And I click remove for button 2

        Then the cart number should be 1

    Scenario: remove item 3 to cart as problem_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password problem_user secret_sauce

        And I click on button number 3

        And I click remove for button 3

        Then the cart number should be 0

    Scenario: remove item 4 to cart as problem_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password problem_user secret_sauce

        And I click on button number 4

        And I click remove for button 4

        Then the cart number should be 0

    Scenario: remove item 5 to cart as problem_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password problem_user secret_sauce

        And I click on button number 5

        And I click remove for button 5

        Then the cart number should be 1
    
    Scenario: remove item 6 to cart as problem_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password problem_user secret_sauce

        And I click on button number 6

        And I click remove for button 6

        Then the cart number should be 0


    ############# GLITCH USER ################
    
    Scenario: remove item 1 to cart as performance_glitch_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password performance_glitch_user secret_sauce

        And I click on button number 1

        And I click remove for button 1

        Then the cart number should be 0
        

    Scenario: remove item 2 to cart as performance_glitch_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password performance_glitch_user secret_sauce

        And I click on button number 2

        And I click remove for button 2

        Then the cart number should be 0


    Scenario: remove item 3 to cart as performance_glitch_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password performance_glitch_user secret_sauce

        And I click on button number 3

        And I click remove for button 3

        Then the cart number should be 0

    Scenario: remove item 4 to cart as performance_glitch_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password performance_glitch_user secret_sauce

        And I click on button number 4

        And I click remove for button 4

        Then the cart number should be 0

    Scenario: remove item 5 to cart as performance_glitch_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password performance_glitch_user secret_sauce

        And I click on button number 5

        And I click remove for button 5

        Then the cart number should be 0

    Scenario: remove item 6 to cart as performance_glitch_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password performance_glitch_user secret_sauce

        And I click on button number 6

        And I click remove for button 6

        Then the cart number should be 0

    

    Scenario: remove item 1 to cart as error_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password error_user secret_sauce

        And I click on button number 1

        And I click remove for button 1

        Then the cart number should be 1
        

    Scenario: remove item 2 to cart as error_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password error_user secret_sauce

        And I click on button number 2

        And I click remove for button 2

        Then the cart number should be 1



    Scenario: remove item 5 to cart as error_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password error_user secret_sauce

        And I click on button number 5

        And I click remove for button 5

        Then the cart number should be 1

    






   
   


        