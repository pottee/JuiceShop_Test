*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/OwaspApp.robot
Resource    ../Resources/Common.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Variables ***
${LOGIN_EMAIL}          juiceshopAssignmentB@mailinator.com
${LOGIN_PASSWORD}       a12345Test*

*** Test Cases ***
Checkout_with_1_item_001_Success
    [Documentation]             Adding 1 item to cart under proceed checkout step
    [Tags]                      Smoke   Checkout1
    OwaspApp.Open Homepage
    OwaspApp.Navigate To Login Page
    OwaspApp.Login              ${LOGIN_EMAIL}      ${LOGIN_PASSWORD}
    OwaspApp.Add product to cart        1
    OwaspApp.Navigate To Shopping Cart Page
    OwaspApp.Checkout From Shopping Cart
    OwaspApp.Add New Address

Checkout_with_2_items_002_Success
    [Tags]                      Smoke   Checkout
    OwaspApp.Open Homepage
    OwaspApp.Navigate To Login Page
    OwaspApp.Login              ${LOGIN_EMAIL}      ${LOGIN_PASSWORD}
    OwaspApp.Add product to cart        2
    OwaspApp.Navigate To Shopping Cart Page
    OwaspApp.Checkout From Shopping Cart
    OwaspApp.Add New Address

Search_product_001_Success
    [Documentation]             Search product with keyword and result is found.
    [Tags]                      Smoke   Search
    OwaspApp.Open Homepage
    OwaspApp.Search For Products        Apple
