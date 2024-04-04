# This Testcase checked our Team page
# Date: 23/03/2024   Author: Oumayma Guizeni

*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/my_keywords.robot


*** Test Cases ***
Test_our_team_page
    [Documentation]    This Test case aims to test our Team page
    [Tags]    acceptance    sanity    firefox
    [Setup]    launch my web site server

    
    open my website on specific browser    wait_time=5
    maximize my web site on the specific browser
    Click On Specific Element    Element_Xpath=${OUR_TEAM_BUTTON_XPATH}     WAIT_TIME=5
    check our team page
    Check And Click On Menu Button
    
    
    [Teardown]    Run Keywords    Close Current Browser 
    ...    AND    stop my web site server