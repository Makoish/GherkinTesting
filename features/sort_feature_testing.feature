Feature: sort_items_home_page

    The user should be able to items from homepage


    Scenario: sort from Z-A as standard_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        And I click sort by Z-A

        Then the text box should be changed to Name (Z to A)
        

    Scenario: sort from low to high as standard_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        And I click sort by low to high

        Then the text box should be changed to Price (low to high)


    Scenario: sort from high to low as standard_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password standard_user secret_sauce

        And I click sort by high to low

        Then the text box should be changed to Price (high to low)


    

    ############ PROBLEM USER #####################

    Scenario: sort from Z-A as problem user

        When I open the website https://www.saucedemo.com/

        And I enter username and password problem_user secret_sauce

        And I click sort by Z-A

        Then the text box should be changed to Name (A to Z)

    
    Scenario: sort from low to high as problem_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password problem_user secret_sauce

        And I click sort by low to high

        Then the text box should be changed to Name (A to Z)


    Scenario: sort from high to low as problem_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password problem_user secret_sauce

        And I click sort by high to low

        Then the text box should be changed to Name (A to Z)



    ############# Error user ###############

    Scenario: sort from Z to A as error_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password error_user secret_sauce

        And I click sort by Z-A

        Then error message should pop saying Sorting is broken! This error has been reported to Backtrace.

    Scenario: sort from low to high as error_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password error_user secret_sauce

        And I click sort by low to high

        Then error message should pop saying Sorting is broken! This error has been reported to Backtrace.
    
    Scenario: sort from high to low as error_user

        When I open the website https://www.saucedemo.com/

        And I enter username and password error_user secret_sauce

        And I click sort by high to low

        Then error message should pop saying Sorting is broken! This error has been reported to Backtrace.


    







   
   


        