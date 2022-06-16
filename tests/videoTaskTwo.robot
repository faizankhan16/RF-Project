*** Settings ***
Library             SeleniumLibrary
Suite Teardown      Close all browsers
Test Teardown       Close all browsers
Resource            ../resources/keywords.robot
Library             JSONLibrary

***Variables***

***Test Cases***

Scenario: The user can see the title
    [Tags]      demo tasks
    Given the video page
    Then the user should able to see the video title

Scenario: The user can play the video
    [Tags]      demo tasks
    Given the video page
    Then the user should able to play the video

*** Keywords ***

#Then--------------------------------------------------------------------------------------------------------------------------------------

the user should able to see the video title

    Page Should Contain                                 ${Video_title}

the user should able to play the video

    Wait Until Element Is Visible                       ${Video_player}
    Wait Until Element Is Enabled                       ${Video_player}
    Click Element                                       ${Video_player}

