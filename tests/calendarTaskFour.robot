*** Settings ***
Library             SeleniumLibrary                     timeout=30
Suite Teardown      Close all browsers
Test Teardown       Close all browsers
Resource            ../resources/keywords.robot
Library             JSONLibrary

***Variables***

***Test Cases***

Scenario: The user can set a date in the calendar
    [Tags]      demo tasks
    Given the calendar page
    When I click on the calendar icon
    Then I can set the required date

*** Keywords ***

#When----------------------------------

I click on the calendar icon

    Wait Until Element Is Visible       ${Calendar_icon}
    Wait Until Element Is Enabled       ${Calendar_icon}      
    Click Element                       ${Calendar_icon}
    Page Should Contain                 June 2022
    Wait Until Element Is Visible       ${Previous_month}
    Click Element                       ${Previous_month}
    Wait Until Page Contains            May 2022
    Wait Until Element Is Visible       ${Previous_month}
    Click Element                       ${Previous_month}
    Wait Until Page Contains            April 2022
    Wait Until Element Is Visible       ${date}
    Wait Until Element Is Enabled       ${date}
    Click Element                       ${date}
    Sleep                               5s                              reason= Loading Website
    

#Then------------------------------------

I can set the required date

    Wait Until Page Contains            Tuesday 12 April 2022