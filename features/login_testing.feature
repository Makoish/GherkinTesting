Feature: LOGIN

    The user should be login to the website

    Scenario: Login as standard user
    
        Given I have internet connection

        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        Then the website should open

    

    Scenario: Login as locked_out_user user
    
        Given I have internet connection

        When I open the website https://www.saucedemo.com/

        And I enter username and password locked_out_user secret_sauce

        Then the website should not open


    Scenario: Login as problem_user user
    
        Given I have internet connection

        When I open the website https://www.saucedemo.com/

        And I enter username and password problem_user secret_sauce

        Then the website should open


    Scenario: Login as performance_glitch_user user
    
        Given I have internet connection

        When I open the website https://www.saucedemo.com/

        And I enter username and password performance_glitch_user secret_sauce

        Then the website should open

    Scenario: Login as error_user user
    
        Given I have internet connection

        When I open the website https://www.saucedemo.com/

        And I enter username and password error_user secret_sauce

        Then the website should open

    Scenario: Login as visual_user user
    
        Given I have internet connection

        When I open the website https://www.saucedemo.com/

        And I enter username and password visual_user secret_sauce

        Then the website should open

    Scenario: Login with wrong user but correct password
    
        Given I have internet connection

        When I open the website https://www.saucedemo.com/

        And I enter username and password zh2t_awy secret_sauce

        Then the website should print error

    
    Scenario: Login with correct user but wrong password
    
        Given I have internet connection

        When I open the website https://www.saucedemo.com/

        And I enter username and password visual_user zh2t_awy

        Then the website should print error


    






        