*** Settings ***
Library     AppiumLibrary
Library         ../../AppiumExtendedLibrary/appiumExtendedLibrary.py
Resource      ../../Config/TestConfig.resource
Variables       ../../Config/Testdata.py

*** Keywords ***

Launch android Application
    Start Appium Service
    sleep   1s
    Open Application    ${remoteUrl}    &{VirtualDeviceDesiredCapabilities}
    Set Appium Timeout     15 seconds

close android Application
     Close Application
     sleep   1s
     Stop Appium Service


