*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${STAGING_ENV}          https://salaryhero-qa-challenge.herokuapp.com/
${INFO_POPUP}            xpath=//*[@id="mat-dialog-0"]/app-welcome-banner/div/div[2]/button[2]

*** Keywords ***
Open
    Go To       ${STAGING_ENV}

Verify Page Loaded
    Wait Until Page Contains        OWASP Juice Shop

Dismiss Popup
    Click Element               ${INFO_POPUP}
