Feature: Open website

    The user should be able to open a website

    Scenario: Open Site
    
        Given I have internet connection

        When I open the website https://www.google.com/

        Then The site opens