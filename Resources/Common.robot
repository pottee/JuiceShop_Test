*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Keywords ***
Begin Web Test
    open browser                about:blank    chrome
    maximize browser window

End Web Test
    close browser

Run Keyword Until Success
    [Documentation]             This for re-try keyword till certain time, especially click and input action to make sure element available
    [Arguments]    ${KW}        @{KWARGS}
    wait until keyword succeeds    15s       1s         ${KW}       @{KWARGS}
