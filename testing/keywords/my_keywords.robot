# This file contain the keywords used during the Test
# Date: 23/03/2024   Author: Oumayma Guizeni

*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Process
Resource    ../ressources/my_IDs.robot


*** Keywords ***
    
open my website on specific browser
    [Documentation]    This keyword aims to launch the website on the browser
    [Arguments]    ${wait_time}=2
    Open Browser    url=${MY_WEBSITE_URL}     browser=${MY_BROWSER_1}
    Sleep    ${wait_time}

launch my web site server
    [Documentation]    This keyword aims to launch the website server
    Run process        ./start_flask_server.sh        cwd=${CURDIR}/../      shell=True
    Log    message="the server is started correctly"

stop my web site server
    [Documentation]    This keyword aims to stop the website server
    Run Process        ./stop_flask_server.sh        cwd=${CURDIR}/../        shell=True
    Log    message="the server is stopped"

maximize my web site on the specific browser
    [Documentation]    This keyword aims to maximize the testing browser
    Maximize Browser Window

Close Current Browser
    [Documentation]     This keyword aims to close The current Browser using the SeleniumLibrary keyword "Close Browser"
    Close Browser

Click On Specific Element
    [Documentation]    This keyword aims to click on SPecific Element using the SeleniumLibrary keyword "Click Element"
    [Arguments]     ${Element_Xpath}    ${WAIT_TIME}=2
    Click Element    xpath=${Element_Xpath}
    Sleep   ${WAIT_TIME}

check our team page
    [Documentation]    this keyword aims to check the elements in our team page
    Sleep    8s
    Run keyword and continue on failure        Page Should Contain       ${CHECK_OUMAYMA_INFO_BOX}
    Log    message="checking CHECK_OUMAYMA_INFO_BOX text in page"    console=True
    Capture Page Screenshot                    
    Run keyword and continue on failure        Page Should Contain Image        ${CHECK_OUMAYMA_IMAGE}
    Log    message="checking CHECK_OUMAYMA_IMAGE image in page"    console=True  
    Scroll web Page    pixel_number=400
    Sleep    8s
    Run keyword and continue on failure        Page Should Contain       ${CHECK_RANIA_INFO_BOX}
    Log    message="checking CHECK_RANIA_INFO_BOX text in page"    console=True 
    Capture Page Screenshot
    Run keyword and continue on failure        Page Should Contain Image        ${CHECK_RANIA_IMAGE}
    Log    message="checking CHECK_RANIA_IMAGE image in page"    console=True
    Scroll web Page    pixel_number=1000
    Sleep    8s
    Run keyword and continue on failure        Page Should Contain       ${CHECK_EMNA_INFO_BOX}
    Log    message="checking CHECK_EMNA_INFO_BOX text in page"    console=True
    Capture Page Screenshot
    Run keyword and continue on failure        Page Should Contain Image        ${CHECK_EMNA_IMAGE}
    Log    message="checking CHECK_EMNA_IMAGE image in page"    console=True
    Scroll web Page    pixel_number=1500
    Sleep    8s
    Run keyword and continue on failure        Page Should Contain      ${CHECK_MOHAMED_INFO_BOX}
    Log    message="checking CHECK_MOHAMED_INFO_BOX text in page"    console=True
    Capture Page Screenshot
    Run keyword and continue on failure        Page Should Contain Image        ${CHECK_MOHAMED_IMAGE}
    Log    message="checking CHECK_MOHAMED_IMAGE image in page"    console=True
    Scroll web Page    pixel_number=1900
    Sleep    8s
    Run keyword and continue on failure        Page Should Contain       ${CHECK_EYA_INFO_BOX}
    Log    message="checking CHECK_EYA_INFO_BOX text in page"    console=True
    Capture Page Screenshot
    Run keyword and continue on failure        Page Should Contain Image        ${CHECK_EYA_IMAGE}
    Log    message="checking CHECK_EYA_IMAGE image in page"    console=True
    Scroll web Page    pixel_number=2300
    Sleep    8s
    Run keyword and continue on failure        Page Should Contain       ${CHECK_ZOUBAIDA_INFO_BOX}
    Log    message="checking CHECK_ZOUBAIDA_INFO_BOX text in page"    console=True
    Capture Page Screenshot
    Run keyword and continue on failure        Page Should Contain Image        ${CHECK_ZOUBAIDA_IMAGE}
    Log    message="checking CHECK_ZOUBAIDA_IMAGE image in page"    console=True
    Scroll web Page    pixel_number=2800
    Sleep    8s
    Run keyword and continue on failure        Page Should Contain       ${CHECK_CHEDI_INFO_BOX}
    Log    message="checking CHECK_CHEDI_INFO_BOX text in page"    console=True
    Capture Page Screenshot
    Run keyword and continue on failure        Page Should Contain Image        ${CHECK_CHEDI_IMAGE}
    Log    message="checking CHECK_CHEDI_IMAGE image in page"    console=True
    Scroll web Page    
    Sleep    8s

Scroll web Page  
    [Arguments]    ${scroll_direction}=Down    ${with_Javascript}=Yes    ${pixel_number}=500
    [Documentation]    a scroll down/Up Keyword , to be Improved Latter 

    IF    "${scroll_direction}" == "Up"
        IF     "${with_Javascript}" == "Yes"
            Execute JavaScript  window.scrollTo(${pixel_number},0 )
            Sleep    2s
        ELSE
            Log     we will Implement A new Logic Here to manage the scroll down 
        END
    ELSE
        IF     "${with_Javascript}" == "Yes"
            Execute JavaScript  window.scrollTo(0, ${pixel_number})
            Sleep    2s
        ELSE
            Log     we will Implement A new Logic Here to manage the scroll down 
        END
    END

check our home page
    [Documentation]    this keyword aims to check the elements in our home page 
    Sleep    8s
    Run keyword and continue on failure        Page Should Contain             ${OUR_TEAM_BUTTON}
    Capture Page Screenshot
    Sleep    8s
    Run keyword and continue on failure        Page Should Contain             ${CONTENT_BUTTON} 
    Capture Page Screenshot
    Sleep    8s
    Run keyword and continue on failure        Page Should Contain             ${HOME_BUTTON} 
    Capture Page Screenshot  
    Sleep    8s
    Run keyword and continue on failure        Page Should Contain             ${MENU_BUTTON} 
    Capture Page Screenshot 
    Sleep    8s
    Run keyword and continue on failure        Page Should Contain Image       ${DISCOVER_MORE_BUTTON} 
    Capture Page Screenshot