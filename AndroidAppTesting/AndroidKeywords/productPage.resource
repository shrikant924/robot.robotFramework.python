*** Settings ***
Library     AppiumLibrary
Library    ../../AndroidAppTesting/AppiumExtendedLibrary/appiumExtendedLibrary.py



*** Keywords ***
add test
    appiumExtendedLibrary.Enter Your Name In Textfield    shri
    appiumExtendedLibrary.Select Gender    Female
    appiumExtendedLibrary.Click On Lets Shop Button



