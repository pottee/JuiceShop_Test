*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${EMAIL_TXT}                id=email
${PASSWORD_TXT}             id=password
${LOGIN_SUBMIT_BTN}         id=loginButton

*** Keywords ***
Login With Valid Credentials
    [Arguments]    ${username}      ${password}
    Fill Username Field    ${username}
    Fill Password Field    ${password}
    Click Submit Button

Fill Username Field
    [Arguments]    ${username}
    Input Text              ${EMAIL_TXT}        ${username}

Fill Password Field
    [Arguments]    ${password}
    Input Text              ${PASSWORD_TXT}     ${password}

Click Submit Button
    Click Button            ${LOGIN_SUBMIT_BTN}
