*** Settings ***
Suite Setup
Suite Teardown
Test Setup       Launch android Application
Test Teardown    close android Application
Resource        ../../PageObjects/Keywords/commonKeywords.resource
Resource    ../../PageObjects/Keywords/countrySelectionPage.resource

*** Test Cases ***
add product
     Start Activity     com.androidsample.generalstore    .AllProductsActivity
     Select Products To Add To Cart     PG 3












