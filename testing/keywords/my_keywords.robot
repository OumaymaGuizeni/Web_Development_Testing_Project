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
    Log    message=+++++++THE SERVER IS STARTED CORRECTLY++++++++++         console=True

stop my web site server
    [Documentation]    This keyword aims to stop the website server
    Run Process        ./stop_flask_server.sh        cwd=${CURDIR}/../        shell=True
    Log    message=+++++++THE SERVER IS STOPED CORRECTLY++++++++++          console=True           

maximize my web site on the specific browser
    [Documentation]    This keyword aims to maximize the testing browser
    Maximize Browser Window

Close Current Browser
    [Documentation]     This keyword aims to close The current Browser using the SeleniumLibrary keyword "Close Browser"
    Log    message=+++++++++++++CLOSE CURRENT BROWSER++++++++++++++          console=True
    Close Browser

Click On Specific Element
    [Documentation]    This keyword aims to click on SPecific Element using the SeleniumLibrary keyword "Click Element"
    [Arguments]     ${Element_Xpath}    ${WAIT_TIME}=2
    Click Element    xpath=${Element_Xpath}
    Sleep   ${WAIT_TIME}

Check Presence Of Oumayma Box In Our Team Page
    [Documentation]     this Keywords aims to check the Presence Of Oumayma Box inside our team page

    Log    message=CHECKING <CHECK_OUMAYMA_INFO_BOX> TEX IN PAGE        console=True
    Run keyword and continue on failure        Page Should Contain       ${CHECK_OUMAYMA_INFO_BOX_TEXT}
    Log    message=CHECKING <CHECK_OUMAYMA_IMAGE> IMAGE IN PAGE         console=True
    Run keyword and continue on failure        Page Should Contain Image        xpath=${CHECK_OUMAYMA_IMAGE_XPATH} 
    Capture Page Screenshot     filename=Oumayma_BOX.png

Check Presence Of Rania Box In Our Team Page 
    [Documentation]     this Keywords aims to check the Presence Of Rania Box inside our team page

    Log    message=CHECKING <CHECK_RANIA_INFO_BOX> TEXT IN PAGE"        console=True 
    Run keyword and continue on failure        Page Should Contain       ${CHECK_RANIA_INFO_BOX_TEXT}
    Log    message=CHECKING <CHECK_RANIA_IMAGE> IMAGE IN PAGE           console=True
    Run keyword and continue on failure        Page Should Contain Image        xpath=${CHECK_RANIA_IMAGE_XPATH}
    Capture Page Screenshot     filename=Rania_BOX.png

Check Presence Of Emna Box In Our Team Page
    [Documentation]     this Keywords aims to check the Presence Of Emna Box inside our team page

    Log    message=CHECKING <CHECK_EMNA_INFO_BOX> TEXT IN PAGE          console=True
    Run keyword and continue on failure        Page Should Contain       ${CHECK_EMNA_INFO_BOX_TEXT}
    Log    message=CHECKING <CHECK_EMNA_IMAGE> IMAGE IN PAGE            console=True
    Run keyword and continue on failure        Page Should Contain Image        xpath=${CHECK_EMNA_IMAGE_XPATH}
    Capture Page Screenshot     filename=Emna_BOX.png

Check Presence Of Mohamed Box In Our Team Page
    [Documentation]     this Keywords aims to check the Presence Of Mohamed Box inside our team page

    Log    message=CHECKING <CHECK_MOHAMED_INFO_BOX> TEXT IN PAGE        console=True
    Run keyword and continue on failure        Page Should Contain      ${CHECK_MOHAMED_INFO_BOX_TEXT} 
    Log    message=CHECKING <CHECK_MOHAMED_IMAGE> IMAGE IN PAGE          console=True
    Run keyword and continue on failure        Page Should Contain Image        xpath=${CHECK_MOHAMED_IMAGE_XPATH}
    Capture Page Screenshot     filename=Mohamed_BOX.png

Check Presence Of Eya Box In Our Team Page
    [Documentation]     this Keywords aims to check the Presence Of Eya Box inside our team page

    Log    message=CHECKING <CHECK_EYA_INFO_BOX> TEXT IN PAGE       console=True
    Run keyword and continue on failure        Page Should Contain      ${CHECK_EYA_INFO_BOX_TEXT} 
    Log    message=CHECKING <CHECK_EYA_IMAGE> IMAGE IN PAGE    console=True
    Run keyword and continue on failure        Page Should Contain Image        xpath=${CHECK_EYA_IMAGE_XPATH}
    Capture Page Screenshot     filename=Eya_BOX.png

Check Presence Of Zoubaida Box In Our Team Page
    [Documentation]     this Keywords aims to check the Presence Of Zoubaida Box inside our team page

    Log    message=CHECKING <CHECK_ZOUBAIDA_INFO_BOX> TEXT IN PAGE      console=True
    Run keyword and continue on failure        Page Should Contain      ${CHECK_ZOUBAIDA_INFO_BOX_TEXT} 
    Log    message=CHECKING <CHECK_ZOUBAIDA_IMAGE> IMAGE IN PAGE        console=True
    Run keyword and continue on failure        Page Should Contain Image        xpath=${CHECK_ZOUBAIDA_IMAGE_XPATH}
    Capture Page Screenshot     filename=Zoubaida_BOX.png

Check Presence Of Chedi Box In Our Team Page
    [Documentation]     this Keywords aims to check the Presence Of Chedi Box inside our team page

    Log    message=CHECKING <CHECK_CHEDI_INFO_BOX> TEXT IN PAGE         console=True
    Run keyword and continue on failure        Page Should Contain      ${CHECK_CHEDI_INFO_BOX_TEXT} 
    Log    message=CHECKING <CHECK_CHEDI_IMAGE> IMAGE IN PAGE           console=True
    Run keyword and continue on failure        Page Should Contain Image        xpath=${CHECK_CHEDI_IMAGE_XPATH}
    Capture Page Screenshot     filename=Chedi_BOX.png

check our team page
    [Documentation]    this keyword aims to check the elements in our team page
    Log     message=WAITING FOR 8 SECONDS TO RENDER OUR TEAM PAGE     console=true
    Sleep    8s  
    Check Presence Of Oumayma box in our team page
    Log     message=SCROLLING DOWN TO NEXT ELEMENT AND WAITING 8 SECONDS TO RENDER IT PROPERLY     console=True                  
    Scroll web Page    pixel_number=400
    Sleep    8s
    Check Presence Of Rania Box In Our Team Page
    Log     message=SCROLLING DOWN TO NEXT ELEMENT AND WAITING 8 SECONDS TO RENDER IT PROPERLY     console=True                  
    Scroll web Page    pixel_number=1000
    Sleep    8s
    Check Presence Of Emna Box In Our Team Page
    Log     message=SCROLLING DOWN TO NEXT ELEMENT AND WAITING 8 SECONDS TO RENDER IT PROPERLY     console=True                  
    Scroll web Page    pixel_number=1500
    Sleep    8s
    Check Presence Of Mohamed Box In Our Team Page
    Log     message=SCROLLING DOWN TO NEXT ELEMENT AND WAITING 8 SECONDS TO RENDER IT PROPERLY     console=True                  
    Scroll web Page    pixel_number=1900
    Sleep    8s
    Check Presence Of Eya Box In Our Team Page
    Log     message=SCROLLING DOWN TO NEXT ELEMENT AND WAITING 8 SECONDS TO RENDER IT PROPERLY     console=True                  
    Scroll web Page    pixel_number=2300
    Sleep    8s
    Check Presence Of Zoubaida Box In Our Team Page
    Log     message=SCROLLING DOWN TO NEXT ELEMENT AND WAITING 8 SECONDS TO RENDER IT PROPERLY     console=True                  
    Scroll web Page    pixel_number=2800
    Sleep    8s
    Check Presence Of Chedi Box In Our Team Page


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
    Log     message=WAITING FOR 8 SECONDS TO RENDER HOME PAGE     console=true
    Sleep    8s
    Check Text In Page For Our Team Button
    Check Text In Page For content Button
    Check Text In Page For Home Button
    Check Text In Page For Discover More Button
    Check Image In Page For Menu Button

Check Text In Page For Our Team Button
    [Documentation]     this keyword used "Page Should Contain" keyword from SeleniumLibrary to check Text of OUR_TEAM_BUTTON_TEXT
    Run keyword and continue on failure        Page Should Contain             ${OUR_TEAM_BUTTON_TEXT}
    Capture Page Screenshot     filename=SCREENSHOT_OUR_TEAM_BUTTON_TEXT.png

Check Text In Page For content Button
    [Documentation]     this keyword used "Page Should Contain" keyword from SeleniumLibrary to check Text of CONTENT_BUTTON_TEXT
    Run keyword and continue on failure        Page Should Contain             ${CONTENT_BUTTON_TEXT}
    Capture Page Screenshot     filename=SCREENSHOT_CONTENT_BUTTON_TEXT.png

Check Text In Page For Home Button
    [Documentation]     this keyword used "Page Should Contain" keyword from SeleniumLibrary to check Text of HOME_BUTTON_TEXT
    Run keyword and continue on failure        Page Should Contain             ${HOME_BUTTON_TEXT}
    Capture Page Screenshot     filename=SCREENSHOT_HOME_BUTTON_TEXT.png

Check Text In Page For Discover More Button
    [Documentation]     this keyword used "Page Should Contain" keyword from SeleniumLibrary to check Text of DISCOVER_MORE_BUTTON_TEXT
    Run keyword and continue on failure        Page Should Contain             ${DISCOVER_MORE_BUTTON_TEXT}
    Capture Page Screenshot     filename=SCREENSHOT_DISCOVER_MORE_BUTTON_TEXT.png

Check Image In Page For Menu Button
    [Documentation]     this keyword used "Page Should Contain Image" keyword from SeleniumLibrary to check Text of MENU_BUTTON_IMAGE_XPATH
    Run keyword and continue on failure        Page Should Contain Image       xpath=${MENU_BUTTON_IMAGE_XPATH}
    Capture Page Screenshot     filename=SCREENSHOT_MENU_BUTTON_IMAGE_XPATH.png