*** Settings ***
Library     AppiumLibrary
Library     appiumExtendedLibrary
Resource    ../../PageObjects/Locators/LoginPageLocators.resource


*** Keywords ***
Select the country
    [Arguments]     ${country}
    Wait Until Page Contains    Select the country where you want to shop
    Click Element    ${countrySelectionDropDown}
    Select the country where you want to shop        ${country}

enter your name
    [Arguments]     ${name}
    Input Text      ${userNameInputField}       ${name}
    Hide Keyboard


select Gender
    [Arguments]     ${gender}
    Click Element    //android.widget.RadioButton[@text='${gender}']

Click on lets shop button
    Click Element    ${letsShpBtn}




