# This Testcase checked our Content Menu
# Date: 27/03/2024   Author: Oumayma Guizeni

*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/my_keywords.robot


*** Test Cases ***
Test_our_content_menu
    [Documentation]    This Test case aims to test our Content menu
    [Tags]    acceptance    sanity    firefox
    [Setup]    launch my web site server

    
    open my website on specific browser    wait_time=5
    maximize my web site on the specific browser
    Check And Click On Menu Button
    
    [Teardown]    Run Keywords    Close Current Browser 
    ...    AND    stop my web site server