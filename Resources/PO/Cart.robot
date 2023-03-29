*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${CHECKOUT_BTN}          id=chekcoutButton

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains        Your Basket

Click To Checkout Button
    Sleep                           0.5s
    Click Element                   id=checkoutButton
