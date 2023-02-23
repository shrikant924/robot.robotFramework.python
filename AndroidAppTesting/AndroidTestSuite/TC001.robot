*** Settings ***
Suite Setup
Suite Teardown
Test Setup       Launch android Application
Test Teardown    close android Application
Resource    ../../commonUtils/commonKeywords.resource
Resource    ../../AndroidAppTesting/AndroidKeywords/countrySelectionPage.resource

*** Test Cases ***
launch the application and select India country
    [Documentation]     sample TC
    [Tags]    smoke   regression
     Select the country     Angola
     enter your name      Mr xyz
     select Gender      Female
     Click on lets shop button
     Select Products To Add To Cart    PG 3
















