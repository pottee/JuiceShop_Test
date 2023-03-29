*** Settings ***
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/Search.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/Address.robot

*** Keywords ***
Login
    [Arguments]     ${username}     ${password}
    SignIn.Login With Valid Credentials     ${username}     ${password}

Open Homepage
    LandingPage.Open
    LandingPage.Verify Page Loaded
    LandingPage.Dismiss Popup

Navigate To Login Page
    TopNav.Click To Account Menu
    TopNav.Click To Login Icon

Add Product To Cart
    [Arguments]     ${number_of_item}
    Search.Verify Page Loaded
    Search.Add Product To Cart      ${number_of_item}

Navigate To Shopping Cart Page
    TopNav.Click To Shopping Cart Icon
    Cart.Verify Page Loaded

Checkout From Shopping Cart
    Cart.Verify Page Loaded
    Cart.Click To Checkout Button

Add New Address
    Address.Click To Add New Address Button
    Address.Verify Add New Address Form Loaded
    Address.Complete New Address Form
    Address.Submit New Address Form

Search For Products
    [Arguments]     ${keyword}
    TopNav.Search For Products       ${keyword}
    Search.Verify Search Completed      ${keyword}
