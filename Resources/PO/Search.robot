*** Settings ***
Library     SeleniumLibrary
Library     String

*** Variables ***
${FIRST_PRODUCT_ITEM}           xpath=//div[@class="ng-star-inserted"]/mat-grid-list/div/mat-grid-tile[1]//button
${NOT_A_KEYWORD}                Banana
${PRODUCTS_LABEL}               xpath=//div[contains(text(),'LABEL_CHANGE_ME')]

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains        All Products

Verify Search Completed
    [Documentation]         This will verify 2 Apple items are found, but Banana
    [Arguments]    ${keyword}
    Sleep           0.5s

    # change the locator with the dynamic keyword i.e. Apple
    ${locator} =    Replace String      ${PRODUCTS_LABEL}       LABEL_CHANGE_ME     ${keyword}
    ${count_valid_result} =  Get Element Count   ${locator}
    Should Be Equal As Integers         ${count_valid_result}       2

    # change the locator with the not the search keyword i.e. Banana
    ${locator} =   Replace String      ${PRODUCTS_LABEL}       LABEL_CHANGE_ME     ${NOT_A_KEYWORD}
    ${no_result} =  Get Element Count   ${locator}
    Should Be Equal As Integers         ${no_result}        0

Add Product To Cart
    [Documentation]         This add only first item of product, upon to number of item
    [Arguments]    ${number_of_item}
    Sleep                       0.5s

    FOR    ${n}  IN RANGE    ${number_of_item}
        Click Element           ${FIRST_PRODUCT_ITEM}
        Sleep                   0.5s
    END
