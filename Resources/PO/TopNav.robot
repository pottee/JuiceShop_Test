*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SEARCH_BTN}               xpath=//mat-icon[contains(text(),'search')]
${SEARCH_TXT}               id=mat-input-0
${ACCOUNT_BTN}              id=navbarAccount
${LOGIN_BTN}                id=navbarLoginButton
${SHOPPING_CART_BTN}        xpath=//mat-icon[contains(text(),'shopping_cart')]

*** Keywords ***
Search For Products
    [Arguments]    ${keyword}
    Click Element           ${SEARCH_BTN}
    Input Text              ${SEARCH_TXT}       ${keyword}
    Press Keys              ${SEARCH_TXT}       ENTER

Click To Account Menu
    Click Element               ${ACCOUNT_BTN}

Click To Login Icon
    Sleep                       0.5s
    Click Element               ${LOGIN_BTN}

Click To Shopping Cart Icon
    Click Element               ${SHOPPING_CART_BTN}