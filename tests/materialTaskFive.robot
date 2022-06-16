# -----------------*** Incomplete ***-------------------- #  

** Settings ***
Library             SeleniumLibrary
Suite Teardown      Close all browsers
Test Teardown       Close all browsers
Resource            ../resources/keywords.robot
Library             JSONLibrary

***Variables***

***Test Cases***

# Scenario: I can open the given demo component
#     [Tags]      demo tasks
#     Given a demo component page 
#     Then I can see the combo box

# Scenario: I can select the required value
#     [Tags]      demo tasks
#     Given a demo component page 
#     When I type the godfather in the combo box
#     Then I can select the value successfully


*** Keywords ***

#When-------------------------------------------------------------------------

I type the godfather in the combo box

    Wait Until Page Contains                    CodeSandbox
    Wait Until Element Is Visible               ${Combo_Box}
    Wait Until Element Is Enabled               ${Combo_Box}
    Input Text                                  ${Combo_Box}                    The Godfather 
    Mouse Over                                  ${Combo_Box_Option}       
    Click Element                               ${Combo_Box_Option}

#Then--------------------------------------------------------------------------

I can see the combo box

    Page Should Contain Element                 css = [id="combo-box-demo"]

I can select the value successfully

    Page Should Contain                         css = [value="The Godfather: Part II"]