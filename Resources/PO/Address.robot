*** Settings ***
Library    SeleniumLibrary
Resource    ../Common.robot

*** Variables ***
${ADD_NEW_ADDRESS_BTN}              xpath=//mat-icon[contains(text(),'add')]
${COUNTRY_TXT}                      id=mat-input-3
${NAME_TEXT}                        id=mat-input-4
${MOBILE_NUMBER_TXT}                id=mat-input-5
${ZIP_CODE_TXT}                     id=mat-input-6
${ADDRESS_TXT}                      id=address
${CITY_TXT}                         id=mat-input-8
${STATE_TXT}                        id=mat-input-9
${ADDRESS_SUBMIT_BTN}               id=submitButton

*** Keywords ***
Click To Add New Address Button
    Run Keyword Until Success       Click Element       ${ADD_NEW_ADDRESS_BTN}

Verify Add New Address Form Loaded
    Wait Until Page Contains        Add New Address

Complete New Address Form
    Sleep                       0.5s
    Input Text                  ${COUNTRY_TXT}          Thailand
    Input Text                  ${NAME_TEXT}            Test JuicePage
    Input Text                  ${MOBILE_NUMBER_TXT}    0900000000
    Input Text                  ${ZIP_CODE_TXT}         10400
    Input Text                  ${ADDRESS_TXT}          49/3 soi 5
    Input Text                  ${CITY_TXT}             Bangkok
    Input Text                  ${STATE_TXT}            Thailand

Submit New Address Form
    # Wait snack bar of adding item to cart (since 2 previous steps) to be disappeared.
    Sleep                       3s
    Click Element               ${ADDRESS_SUBMIT_BTN}
