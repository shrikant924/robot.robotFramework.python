*** Settings ***
Library        Selenium2Library
Resource          ../../Config/TestConfig.resource

*** Keywords ***
Launch Application
    Set Log Level    TRACE
    Open Browser    ${AppURL}    ${Browser}
    Set Selenium Speed    1
    Maximize Browser Window

Clear SUT To Initial State
    Close Browser
