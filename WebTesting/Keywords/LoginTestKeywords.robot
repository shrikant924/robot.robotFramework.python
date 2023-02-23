*** Settings ***
Library     Selenium2Library
Resource    ../TestData/TestConfig.resource
Resource    ../Objects/Locators/LoginPageLocators.resource

*** Keywords ***
Enter username into the textfield
    Wait Until Element Is Visible    ${userNameInputField}
    Input Text    ${userNameInputField}    ${userName}

Enter password into the textfield
    Wait Until Element Is Visible    ${passwordInputField}
    Input Password    ${passwordInputField}    ${password}

click on login button
    Wait Until Element Is Visible    ${loginBtn}
    Click Button    ${loginBtn}
    
verify user is landed on homepage
    Page Should Contain    Products