*** Settings ***
Suite Setup         Launch Application
Suite Teardown      Clear SUT To Initial State
Resource          ../../PageObjects/Keywords/LaunchApplication.robot
Resource     ../../PageObjects/Keywords/LoginTestKeywords.robot

*** Test Cases ***
Verify user is able to login with valid credentials
    [Documentation]     this testcase will verify login functionality
    [Tags]    smoke   regression

    Enter username into the textfield
    Enter password into the textfield
    click on login button
    verify user is landed on homepage


