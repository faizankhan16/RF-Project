*** Settings ***
Library           SeleniumLibrary                 timeout=30
Resource          ../resources/keywords.robot
Library           JSONLibrary

*** Variables ***

*** Test Cases ***

Scenario: Title matches the required value
    [Tags]      demo tasks
    Given a gallery page
    When I go to the gallery page
    Then the title should match the value

Scenario: Assertion that each image is loaded along with captions
    [Tags]      demo tasks
    Given a gallery page
    When I go to the gallery page
    Then all images should be loded on the page with captions

Scenario: By clicking the load more button user should see more images with valid captions
    [Tags]      demo tasks
    Given a gallery page
    When I click on the load more button
    Then I should see more images with valid captions

Scenario: Load more button should not be visible when all the images are loaded
    [Tags]      demo tasks
    Given a gallery page
    When I load all the images in gallery
    Then the load more button should disappear

Scenario: The gallery displays first four images on page load
    [Tags]      demo tasks
    Given a gallery page
    When I go to the gallery page
    Then I can see first four images only

*** Keywords ***

#When---------------------------------------------------------------------------------------------------------

I go to the gallery page

    Wait Until Page Contains                       Robot Test Photogallery 6x img 2022-05-16 19:30:14  

I click on the load more button

    Wait Until Page Contains                        Robot Test Photogallery 6x img 2022-05-16 19:30:14  
    Wait Until Element Is Visible                   ${Accept_Cookies}
    Wait Until Element Is Enabled                   ${Accept_Cookies} 
    Click Element                                   ${Accept_Cookies}
    Wait Until Element Is Visible                   ${Load_More_Button}
    Wait Until Element Is Enabled                   ${Load_More_Button}
    click Element                                   ${Load_More_Button}                       
      
I load all the images in gallery

    Wait until page Contains                       Robot Test Photogallery 6x img 2022-05-16 19:30:14  
    Wait Until Element Is Visible                  ${Load_More_Button}
    Wait Until Element Is Enabled                  ${Load_More_Button}
    Scroll Element Into View                       ${Load_More_Button}  
    Click Element                                  ${Load_More_Button}  
    Page Should Contain Image                      ${img05}                               
    Element Should Be Visible                      ${img05}
    Page Should Contain Image                      ${img06}                               
    Element Should Be Visible                      ${img06}
    Page Should Contain                            Caption 2022-05-16 19:30:14 5
    Page Should Contain                            Caption 2022-05-16 19:30:14 6   


#Then----------------------------------------------------------------------------------------------------------

the title should match the value

  Page Should Contain                              Robot Test Photogallery 6x img 2022-05-16 19:30:14

all images should be loded on the page with captions

    Wait Until Element Is Visible               ${img01}    
    Wait Until Element Is Enabled               ${img01}  
    Page Should Contain Image                   ${img01}   
    Page Should Contain                         Caption 2022-05-16 19:30:14 1   
    Wait Until Element Is Visible               ${img02}    
    Wait Until Element Is Enabled               ${img02}  
    Page Should Contain Image                   ${img02}   
    Page Should Contain                         Caption 2022-05-16 19:30:14 2   
    Wait Until Element Is Visible               ${img03}    
    Wait Until Element Is Enabled               ${img03}  
    Page Should Contain Image                   ${img03}   
    Page Should Contain                         Caption 2022-05-16 19:30:14 3   
    Wait Until Element Is Visible               ${img04}    
    Wait Until Element Is Enabled               ${img04}  
    Page Should Contain Image                   ${img04}   
    Page Should Contain                         Caption 2022-05-16 19:30:14 4   

I should see more images with valid captions

    Wait Until Element Is Visible               ${img05}                               
    Page Should Contain Image                   ${img05}
    Page Should Contain                         Caption 2022-05-16 19:30:14 5
    Wait Until Element Is Visible               ${img06}                               
    Page Should Contain Image                   ${img06}
    Page Should Contain                         Caption 2022-05-16 19:30:14 6

the load more button should disappear

    Element Should Not Be Visible               ${Load_More_Button} 

I can see first four images only

    Wait Until Element Is Visible               ${img01}    
    Wait Until Element Is Enabled               ${img01}  
    Page Should Contain Image                   ${img01}   
    Page Should Contain                         Caption 2022-05-16 19:30:14 1   
    Wait Until Element Is Visible               ${img02}    
    Wait Until Element Is Enabled               ${img02}  
    Page Should Contain Image                   ${img02}   
    Page Should Contain                         Caption 2022-05-16 19:30:14 2   
    Wait Until Element Is Visible               ${img03}    
    Wait Until Element Is Enabled               ${img03}  
    Page Should Contain Image                   ${img03}   
    Page Should Contain                         Caption 2022-05-16 19:30:14 3   
    Wait Until Element Is Visible               ${img04}    
    Wait Until Element Is Enabled               ${img04}  
    Page Should Contain Image                   ${img04}   
    Page Should Contain                         Caption 2022-05-16 19:30:14 4   
    Page Should Not Contain Image               ${img05}                               
    Page Should Not Contain Image               ${img06}                               
    Page Should Not Contain                     Caption 2022-05-16 19:30:14 5
    Page Should Not Contain                     Caption 2022-05-16 19:30:14 6