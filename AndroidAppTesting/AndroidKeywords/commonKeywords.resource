*** Settings ***
Library     AppiumLibrary
Library         ../../AndroidAppTesting/AppiumExtendedLibrary/appiumExtendedLibrary.py
Resource      ../../AndroidAppTesting/AndroidTestData/TestConfig.resource
Variables       ../../AndroidAppTesting/AndroidTestData/Testdata.py

*** Keywords ***

Launch android Application
    Start Appium Service
    sleep   1s
    Open Application    ${remoteUrl}    &{VirtualDeviceDesiredCapabilities}

close android Application
     Close Application
     sleep   1s
     Stop Appium Service


