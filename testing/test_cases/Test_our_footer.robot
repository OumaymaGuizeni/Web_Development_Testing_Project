# This Testcase checked our Team page
# Date: 07/04/2024   Author: Oumayma Guizeni

*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/my_keywords.robot
Test Template           Run keyword and continue on failure


*** Test Cases ***
Test_our_footer
    [Documentation]    This Test case aims to test our Footer
    [Tags]    acceptance    sanity    firefox
    [Setup]    launch my web site server

    open my website on specific browser    wait_time=5
    maximize my web site on the specific browser
    Click On Specific Element    Element_Xpath=${OUR_TEAM_BUTTON_XPATH}     WAIT_TIME=2
    Scroll web Page    pixel_number=3000
    Check Footer In all pages
    Click On Specific Element       Element_Xpath=${CONTENT_BUTTON_XPATH}       WAIT_TIME=2
    Scroll web Page    pixel_number=4000
    Check Footer In all pages


    [Teardown]    Run Keywords    Close Current Browser 
    ...    AND    stop my web site server