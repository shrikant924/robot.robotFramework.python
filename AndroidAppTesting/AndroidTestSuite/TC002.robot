*** Settings ***
Suite Setup
Suite Teardown
Test Setup       Launch android Application
Test Teardown    close android Application
Resource    ../../commonUtils/commonKeywords.resource
Resource    ../../AndroidAppTesting/AndroidKeywords/countrySelectionPage.resource
Resource      ../../AndroidAppTesting/AndroidKeywords/productPage.resource

*** Test Cases ***
add product
     Start Activity     com.androidsample.generalstore    .AllProductsActivity
     Select Products To Add To Cart     PG 3












