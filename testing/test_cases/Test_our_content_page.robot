# This Testcase checked our Content page
# Date: 27/03/2024   Author: Oumayma Guizeni

*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/my_keywords.robot


*** Test Cases ***
Test_our_content_page
    [Documentation]    This Test case aims to test our Content page
    [Tags]    acceptance    sanity    firefox
    [Setup]    launch my web site server

    
    open my website on specific browser    wait_time=5
    maximize my web site on the specific browser
    Click On Specific Element       Element_Xpath=${CONTENT_BUTTON_XPATH}       WAIT_TIME=2
    Check And Click On Menu Button
    Check The Presence Of Introduction Text In Content Page
    Scroll web Page    pixel_number=200
    Check The Presence Of Types Of Software Testing Text In Content Page
    Check The Presence Of Principles of Testing Text In Content Page
    Check The Presence Of Types of Testing Text In Content Page
    Scroll web Page    pixel_number=300
    Check The Presence Of Types Of Software Testing Image In Content Page
    Scroll web Page    pixel_number=800
    Check The Presence Of Manual Testing Text In Content Page
    Scroll web Page    pixel_number=950
    Check The Presence Of Automation Testing Text In Content Page
    Scroll web Page    pixel_number=1050
    Check The Presence Of Scope of Work Text In Content Page
    Scroll web Page    pixel_number=1200
    Check The Presence Of Description of the Testing Environment Text In Content Page
    Scroll web Page    pixel_number=1350
    Check The Presence Of Types of Testing Covered Text In Content Page
    Scroll web Page    pixel_number=1500
    Check The Presence Of Script Image In Content Page
    Scroll web Page    pixel_number=1650
    Check The Presence Of Methodology Used Text In Content Page
    Scroll web Page    pixel_number=1800
    Check The Presence Of Approach to Testing Text In Content Page
    Scroll web Page    pixel_number=1950
    Check The Presence Of Agile Methodology Image In Content Page
    Scroll web Page    pixel_number=2100
    Check The Presence Of Testing Strategies Employed Text In Content Page
    Scroll web Page    pixel_number=2250
    Check The Presence Of Automated VS Manual Testing Image In Content Page
    Scroll web Page    pixel_number=2400
    Check The Presence Of Testing Phases Text In Content Page
    Scroll web Page    pixel_number=2550
    Check The Presence Of Functionality testing Text In Content Page
    Scroll web Page    pixel_number=2700
    Check The Presence Of Performance testing Text In Content Page
    Scroll web Page    pixel_number=2850
    Check The Presence Of Conclusion Text In Content Page


    [Teardown]    Run Keywords    Close Current Browser 
    ...    AND    stop my web site server