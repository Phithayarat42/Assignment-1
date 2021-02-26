*** Settings ***
Library    SeleniumLibrary

Test Setup    Open Browser And Go To Page
Test Teardown    Close Browser
 
*** Variables ***
${FORM_URL}    https://www.youtube.com/
${BROWSER}    chrome
${DELAY}    0
 
*** Test Cases ***
Page Should Show Header
    [Documentation]    When visit the page it should show the text Hi Youtube
    Page Should Contain    Youtube
 
*** Keywords ***
Open Browser And Go To Page
    Open Browser    ${FORM_URL}    ${BROWSER}
