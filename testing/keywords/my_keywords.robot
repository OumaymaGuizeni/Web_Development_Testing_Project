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
    
    Log     message=OPENING_URL_:_${MY_WEBSITE_URL}_at_:_${MY_BROWSER_1}             console=True
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
    
    Log     message=+++++++++++MAXIMIZE THE BROWSER NOW++++++++++++        console=True
    Maximize Browser Window

Close Current Browser
    [Documentation]     This keyword aims to close The current Browser using the SeleniumLibrary keyword "Close Browser"
    
    Log    message=+++++++++++++CLOSE CURRENT BROWSER++++++++++++++          console=True
    Close Browser

Click On Specific Element
    [Documentation]    This keyword aims to click on SPecific Element using the SeleniumLibrary keyword "Click Element"
    [Arguments]     ${Element_Xpath}    ${WAIT_TIME}=1
    
    Log     message=CLICKINH ON SPECIFIC ELEMENT ${Element_Xpath}   console=True
    ${status}=    Run Keyword And Return Status     Click Element    xpath=${Element_Xpath}
    IF    "${status}" == "True"
        Log    message=CLICK_ON_ELEMENT_${Element_Xpath}_PASSED       console=True
    ELSE    
        Run keyword and continue on failure      Fail      message=CLICK_ON_ELEMENT_${Element_Xpath}_FAILED      console=True
    END
    Sleep   ${WAIT_TIME}

Check Presence Of Oumayma Box In Our Team Page
    [Documentation]     this Keywords aims to check the Presence Of Oumayma Box inside our team page

    Log    message=CHECKING <CHECK_OUMAYMA_INFO_BOX> TEX IN PAGE        console=True
    Run keyword and continue on failure        Page Should Contain       ${CHECK_OUMAYMA_INFO_BOX_TEXT}
    Log    message=CHECKING <CHECK_OUMAYMA_IMAGE> IMAGE IN PAGE         console=True
    Run keyword and continue on failure        Page Should Contain Image        xpath=${CHECK_OUMAYMA_IMAGE_XPATH} 
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/Oumayma_BOX.png

Check Presence Of Rania Box In Our Team Page 
    [Documentation]     this Keywords aims to check the Presence Of Rania Box inside our team page

    Log    message=CHECKING <CHECK_RANIA_INFO_BOX> TEXT IN PAGE"        console=True 
    Run keyword and continue on failure        Page Should Contain       ${CHECK_RANIA_INFO_BOX_TEXT}
    Log    message=CHECKING <CHECK_RANIA_IMAGE> IMAGE IN PAGE           console=True
    Run keyword and continue on failure        Page Should Contain Image        xpath=${CHECK_RANIA_IMAGE_XPATH}
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/Rania_BOX.png

Check Presence Of Emna Box In Our Team Page
    [Documentation]     this Keywords aims to check the Presence Of Emna Box inside our team page

    Log    message=CHECKING <CHECK_EMNA_INFO_BOX> TEXT IN PAGE          console=True
    Run keyword and continue on failure        Page Should Contain       ${CHECK_EMNA_INFO_BOX_TEXT}
    Log    message=CHECKING <CHECK_EMNA_IMAGE> IMAGE IN PAGE            console=True
    Run keyword and continue on failure        Page Should Contain Image        xpath=${CHECK_EMNA_IMAGE_XPATH}
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/Emna_BOX.png

Check Presence Of Mohamed Box In Our Team Page
    [Documentation]     this Keywords aims to check the Presence Of Mohamed Box inside our team page

    Log    message=CHECKING <CHECK_MOHAMED_INFO_BOX> TEXT IN PAGE        console=True
    Run keyword and continue on failure        Page Should Contain      ${CHECK_MOHAMED_INFO_BOX_TEXT} 
    Log    message=CHECKING <CHECK_MOHAMED_IMAGE> IMAGE IN PAGE          console=True
    Run keyword and continue on failure        Page Should Contain Image        xpath=${CHECK_MOHAMED_IMAGE_XPATH}
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/Mohamed_BOX.png

Check Presence Of Eya Box In Our Team Page
    [Documentation]     this Keywords aims to check the Presence Of Eya Box inside our team page

    Log    message=CHECKING <CHECK_EYA_INFO_BOX> TEXT IN PAGE       console=True
    Run keyword and continue on failure        Page Should Contain      ${CHECK_EYA_INFO_BOX_TEXT} 
    Log    message=CHECKING <CHECK_EYA_IMAGE> IMAGE IN PAGE    console=True
    Run keyword and continue on failure        Page Should Contain Image        xpath=${CHECK_EYA_IMAGE_XPATH}
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/Eya_BOX.png

Check Presence Of Zoubaida Box In Our Team Page
    [Documentation]     this Keywords aims to check the Presence Of Zoubaida Box inside our team page

    Log    message=CHECKING <CHECK_ZOUBAIDA_INFO_BOX> TEXT IN PAGE      console=True
    Run keyword and continue on failure        Page Should Contain      ${CHECK_ZOUBAIDA_INFO_BOX_TEXT} 
    Log    message=CHECKING <CHECK_ZOUBAIDA_IMAGE> IMAGE IN PAGE        console=True
    Run keyword and continue on failure        Page Should Contain Image        xpath=${CHECK_ZOUBAIDA_IMAGE_XPATH}
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/Zoubaida_BOX.png

Check Presence Of Chedi Box In Our Team Page
    [Documentation]     this Keywords aims to check the Presence Of Chedi Box inside our team page

    Log    message=CHECKING <CHECK_CHEDI_INFO_BOX> TEXT IN PAGE         console=True
    Run keyword and continue on failure        Page Should Contain      ${CHECK_CHEDI_INFO_BOX_TEXT} 
    Log    message=CHECKING <CHECK_CHEDI_IMAGE> IMAGE IN PAGE           console=True
    Run keyword and continue on failure        Page Should Contain Image        xpath=${CHECK_CHEDI_IMAGE_XPATH}
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/Chedi_BOX.png

check our team page
    [Documentation]    this keyword aims to check the elements in our team page
    
    Log     message=WAITING FOR 8 SECONDS TO RENDER OUR TEAM PAGE     console=true
    Check Presence Of Oumayma box in our team page
    Log     message=SCROLLING DOWN TO NEXT ELEMENT AND WAITING 2 SECONDS TO RENDER IT PROPERLY     console=True                  
    Scroll web Page    pixel_number=400
    Check Presence Of Rania Box In Our Team Page
    Log     message=SCROLLING DOWN TO NEXT ELEMENT AND WAITING 2 SECONDS TO RENDER IT PROPERLY     console=True                  
    Scroll web Page    pixel_number=1000
    Check Presence Of Emna Box In Our Team Page
    Log     message=SCROLLING DOWN TO NEXT ELEMENT AND WAITING 2 SECONDS TO RENDER IT PROPERLY     console=True                  
    Scroll web Page    pixel_number=1500
    Check Presence Of Mohamed Box In Our Team Page
    Log     message=SCROLLING DOWN TO NEXT ELEMENT AND WAITING 2 SECONDS TO RENDER IT PROPERLY     console=True                  
    Scroll web Page    pixel_number=1900
    Check Presence Of Eya Box In Our Team Page
    Log     message=SCROLLING DOWN TO NEXT ELEMENT AND WAITING 2 SECONDS TO RENDER IT PROPERLY     console=True                  
    Scroll web Page    pixel_number=2300
    Check Presence Of Zoubaida Box In Our Team Page
    Log     message=SCROLLING DOWN TO NEXT ELEMENT AND WAITING 2 SECONDS TO RENDER IT PROPERLY     console=True                  
    Scroll web Page    pixel_number=2800
    Check Presence Of Chedi Box In Our Team Page


Scroll web Page  
    [Arguments]    ${scroll_direction}=Down    ${with_Javascript}=Yes    ${pixel_number}=500    ${WAIT_TIME}=2s
    [Documentation]    a scroll down/Up Keyword , to be Improved Latter 

    IF    "${scroll_direction}" == "Up"
        IF     "${with_Javascript}" == "Yes"
            Execute JavaScript  window.scrollTo(${pixel_number},0 )
            Sleep    ${WAIT_TIME}
        ELSE
            Log     we will Implement A new Logic Here to manage the scroll down
            Sleep    ${WAIT_TIME} 
        END
    ELSE
        IF     "${with_Javascript}" == "Yes"
            Execute JavaScript  window.scrollTo(0, ${pixel_number})
            Sleep    ${WAIT_TIME}
        ELSE
            Log     we will Implement A new Logic Here to manage the scroll down
            Sleep    ${WAIT_TIME} 
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
    

Check Text In Page For Our Team Button
    [Documentation]     this keyword used "Page Should Contain" keyword from SeleniumLibrary to check Text of OUR_TEAM_BUTTON_TEXT
    
    Log     messgae=CHECKING_TEXT_INPAGE_FOR_OUR_TEAM_BUTTON        console=True
    Run keyword and continue on failure        Page Should Contain             ${OUR_TEAM_BUTTON_TEXT}
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/SCREENSHOT_OUR_TEAM_BUTTON_TEXT.png

Check Text In Page For content Button
    [Documentation]     this keyword used "Page Should Contain" keyword from SeleniumLibrary to check Text of CONTENT_BUTTON_TEXT
    
    Log     messgae=CHECKING_TEXT_INPAGE_FOR_CONTENT_BUTTON        console=True
    Run keyword and continue on failure        Page Should Contain             ${CONTENT_BUTTON_TEXT}
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/SCREENSHOT_CONTENT_BUTTON_TEXT.png

Check Text In Page For Home Button
    [Documentation]     this keyword used "Page Should Contain" keyword from SeleniumLibrary to check Text of HOME_BUTTON_TEXT
    
    Log     messgae=CHECKING_TEXT_INPAGE_FOR_HOME_BUTTON        console=True
    Run keyword and continue on failure        Page Should Contain             ${HOME_BUTTON_TEXT}
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/SCREENSHOT_HOME_BUTTON_TEXT.png

Check Text In Page For Discover More Button
    [Documentation]     this keyword used "Page Should Contain" keyword from SeleniumLibrary to check Text of DISCOVER_MORE_BUTTON_TEXT
    
    Log     messgae=CHECKING_TEXT_INPAGE_DICOVER_MORE_BUTTON        console=True
    Run keyword and continue on failure        Page Should Contain             ${DISCOVER_MORE_BUTTON_TEXT}
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/SCREENSHOT_DISCOVER_MORE_BUTTON_TEXT.png

#check our content page
#    [Documentation]    this keyword aims to check the elements in our content page 
#    Log     message=WAITING FOR 8 SECONDS TO RENDER CONTENT PAGE     console=true
#   Sleep    8s
    #Check Image In Page For Menu Button
    #Check Text Introduction In Menu Button
    #Check Text Types of Software Testing In Menu Button
    #Check Text Tools for Automation Testing In Menu Button
    #Check Text Real World Applications In Menu Button
    #Check Text Conclusion In Menu Button

Check Text Conclusion In Menu Button
    [Documentation]    this keyword aims to check the Conclusion text in our Menu Button
    
    Log    message=CHECK_CONCLUSION_BUTTON    console=True
    Run keyword and continue on failure        Page Should Contain             ${CONCLUSION_BUTTON_TEXT}
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/SCREENSHOT_CONCLUSION_BUTTON_TEXT.png

Check Text Testing Phases In Menu Button
    [Documentation]    this keyword aims to check the Testing Phases text in our Menu Button
    
    Log    message=CHECK_TESTING_PHASES_BUTTON    console=True
    Run keyword and continue on failure        Page Should Contain             ${TESTING_PHASES_BUTTON_TEXT}
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/SCREENSHOT_CTESTING_PHASES_BUTTON_TEXT.png

Check Text Methodology Used In Menu Button
    [Documentation]    this keyword aims to check the Methodology Used text in our Menu Button
    
    Log    message=CHECK_METHODOLOGY_USED_BUTTON     console=True
    Run keyword and continue on failure        Page Should Contain             ${METHODOLOGY_USED_BUTTON_TEXT}
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/SCREENSHOT_METHODOLOGY_USED_BUTTON_TEXT.png

Check Text Scope of Work In Menu Button
    [Documentation]    this keyword aims to check the Scope of Work text in our Menu Button
    
    Log    message=CHECK_SCOPE_OF_WORK_BUTTON     console=True
    Run keyword and continue on failure        Page Should Contain             ${SCOPE_OF_WORK_BUTTON_TEXT}
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/SCREENSHOT_SCOPE_OF_WORK_BUTTON_TEXT.png

Check Text Types of Software Testing In Menu Button
    [Documentation]    this keyword aims to check the Types of Software Testing text in our Menu Button
    
    Log    message=CHECK_TYPES_OF_SOFTWARE_TESTING_BUTTON     console=True
    Run keyword and continue on failure        Page Should Contain             ${TYPES_OF_SOFTWARE_TESTING_BUTTON_TEXT}
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/SCREENSHOT_TYPES_OF_SOFTWARE_TESTING_BUTTON_TEXT.png

Check Text Introduction In Menu Button
    [Documentation]    this keyword aims to check the Introduction text in our Menu Button
    
    Log    message=CHECK_INTRODUCTION_BUTTON     console=True
    Run keyword and continue on failure        Page Should Contain             ${INTRODUCTION_BUTTON_TEXT}
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/SCREENSHOT_INTRODUCTION_BUTTON_TEXT.png

Check Element Status
    [Documentation]     this keyword aims to check a specific Element status using SeleniumLibrary keyword "Element should Be Enabled"
    ...    and    "Element should Be Disabled" 
    [Arguments]     ${Element_Xpath}    ${status}   
    
    IF  '${status}' == 'Enabled'
        Log     message=CHECKING_IF_THE_ELEMENT_${Element_Xpath}_IS_CLICKABLE       console=True
        Element Should Be Enabled   xpath=${Element_Xpath}
    ELSE
        Log     message=CHECKING_IF_THE_ELEMENT_${Element_Xpath}_IS_NOT_CLICKABLE       console=True
        Element Should Be Disabled   xpath=${Element_Xpath}
    END

Check Element Presence
    [Documentation]    this keyword aims to check element presence using SeleniumLibrary "Element Should Be Visible" keyword
    ...    and    "Element Should Not Be Visible"
    [Arguments]    ${Element_Xpath}    ${status}
    
    IF  '${status}' == 'Visible'
        Log     message=CHECKING_IF_THE_ELEMENT_${Element_Xpath}_IS_VISIBLE       console=True
        Element Should Be Visible   xpath=${Element_Xpath}
    ELSE
        Log     message=CHECKING_IF_THE_ELEMENT_${Element_Xpath}_IS_NOT_VISIBLE       console=True
        Element Should Not Be Visible   xpath=${Element_Xpath}
    END

Check And Click On Menu Button
    [Documentation]     this keyword used "Check Element Presence" keyword to check and click on MENU_BUTTON
    
    Log     message=CHECKING_IF_THE_MENU_IS_NOT_DISPLAYING      console=True
    Run keyword and continue on failure        Check Element Presence       Element_Xpath=${MENU_BUTTON_IMAGE_XPATH}    status=Visible
    Run keyword and continue on failure        Check Element Presence       Element_Xpath=${MENU_LIST_XPATH}            status=Not_Visible
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/SCREENSHOT_MENU_BUTTON_IMAGE_XPATH_1.png
    Log     message=CLICKING_ON_THE_MENU        console=True
    Click On Specific Element       Element_Xpath=${MENU_BUTTON_IMAGE_XPATH}    WAIT_TIME=5
    Log     message=CHECKING_IF_THE_MENU_IS_WELL_DISPLAYED      console=True
    Run keyword and continue on failure        Check Element Presence       Element_Xpath=${MENU_LIST_XPATH}            status=Visible
    # Note this is New Keyword for Taking Screenshots of a specific Element
    Capture Element Screenshot      xpath=${MENU_BUTTON_IMAGE_XPATH}        filename=Screenshots/${TEST NAME}/SCREENSHOT_MENU_BUTTON_IMAGE_XPATH_2.png
    # Note this is New Keyword for Taking Screenshots of a specific Element
    Capture Element Screenshot      xpath=${MENU_LIST_XPATH}        filename=Screenshots/${TEST NAME}/SCREENSHOT_MENU_LIST_XPATH_1.png
    Check Text Introduction In Menu Button
    Check Text Types of Software Testing In Menu Button
    Check Text Scope of Work In Menu Button
    Check Text Methodology Used In Menu Button
    Check Text Testing Phases In Menu Button
    Check Text Conclusion In Menu Button
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/SCREENSHOT_MENU_LIST_XPATH.png
    Log     message=CLICKING_ON_THE_MENU_AGAIN_TO_CLOSE_IT      console=True
    Click On Specific Element       Element_Xpath=${MENU_BUTTON_IMAGE_XPATH}    WAIT_TIME=5
    Log     message=CHECKING_IF_THE_MENU_IS_NOT_DISPLAYING          console=True
    Run keyword and continue on failure        Check Element Presence       Element_Xpath=${MENU_BUTTON_IMAGE_XPATH}    status=Visible
    Run keyword and continue on failure        Check Element Presence       Element_Xpath=${MENU_LIST_XPATH}            status=Not_Visible
    Capture Page Screenshot     filename=Screenshots/${TEST NAME}/SCREENSHOT_MENU_BUTTON_IMAGE_XPATH_3.png

Check The Presence Of Introduction Text In Content Page
    [Documentation]     this keyword Check the existance of the Text "Introduction" in the content page

    Log     message=CHECKING_THE_PRESENCE_OF_INTRODUCTION_TEXT_IN_CONTENT_PAGE        console=True
    Run keyword and continue on failure     Check Element Presence      Element_Xpath=${INTRODUCTION_TEXT_IN_CONTENT_PAGE_XPATH}        status=Visible
    Capture Element Screenshot      xpath=${INTRODUCTION_TEXT_IN_CONTENT_PAGE_XPATH}        filename=Screenshots/${TEST NAME}/SCREENSHOT_INTRODUCTION_TEXT_IN_CONTENT_PAGE_XPATH.png

Check The Presence Of Types Of Software Testing Text In Content Page
    [Documentation]     this keyword Check the existance of the Text "Types Of Software Testing" in the content page

    Log     message=CHECKING_THE_PRESENCE_OF_TYOES_OF_SOFTWARE_TESTING_TEXT_IN_CONTENT_PAGE        console=True
    Run keyword and continue on failure     Check Element Presence      Element_Xpath=${TYPES_OF_SOFTWARE_TESTING_TEXT_IN_CONTENT_PAGE_XPATH}        status=Visible
    Capture Element Screenshot      xpath=${TYPES_OF_SOFTWARE_TESTING_TEXT_IN_CONTENT_PAGE_XPATH}        filename=Screenshots/${TEST NAME}/SCREENSHOT_TYPES_OF_SOFTWARE_TESTING_TEXT_IN_CONTENT_PAGE_XPATH.png

Check The Presence Of Principles of Testing Text In Content Page
    [Documentation]     this keyword Check the existance of the Text "Principles of Testing" in the content page

    Log     message=CHECKING_THE_PRESENCE_OF_PRINCIPLES_OF_TESTING_TEXT_IN_CONTENT_PAGE        console=True
    Run keyword and continue on failure     Check Element Presence      Element_Xpath=${PRINCIPELS_OF_TESTING_TEXT_IN_CONTENT_PAGE_XPATH}         status=Visible
    Capture Element Screenshot      xpath=${PRINCIPELS_OF_TESTING_TEXT_IN_CONTENT_PAGE_XPATH}         filename=Screenshots/${TEST NAME}/SCREENSHOT_PRINCIPELS_OF_TESTING_TEXT_IN_CONTENT_PAGE_XPATH.png

Check The Presence Of Types of Testing Text In Content Page
    [Documentation]     this keyword Check the existance of the Text "Types of Testing" in the content page

    Log     message=CHECKING_THE_PRESENCE_OF_TYPES_OF_TESTING_TEXT_IN_CONTENT_PAGE        console=True
    Run keyword and continue on failure     Check Element Presence      Element_Xpath=${TYPES_OF_TESTING_TEXT_IN_CONTENT_PAGE_XPATH}        status=Visible
    Capture Element Screenshot      xpath=${TYPES_OF_TESTING_TEXT_IN_CONTENT_PAGE_XPATH}         filename=Screenshots/${TEST NAME}/SCREENSHOT_TYPES_OF_TESTING_TEXT_IN_CONTENT_PAGE_XPATH.png

Check The Presence Of Types Of Software Testing Image In Content Page
    [Documentation]     this keyword Check the existance of the Text "Types Of Software Testing Image" in the content page with the SeleniumLibrary keyword "Page Should Contain Image

    Log     message=CHECKING_THE_PRESENCE_OF_TYPES_OF_SOFTWARE_TESTING_IMAGE_IN_CONTENT_PAGE        console=True
    Run keyword and continue on failure     Page Should Contain Image       xpath=${TYPES_OF_SW_TESTING_BIG_IMAGE_IN_CONTENT_PAGE_XPATH}        
    Capture Element Screenshot      xpath=${TYPES_OF_SW_TESTING_BIG_IMAGE_IN_CONTENT_PAGE_XPATH}        filename=Screenshots/${TEST NAME}/SCREENSHOT_TYPES_OF_SW_TESTING_BIG_IMAGE_IN_CONTENT_PAGE_XPATH.png
