# This file contain the IDs used during the Test
# Date: 23/03/2024   Author: Oumayma Guizeni

*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/my_keywords.robot


*** Variables ***

# ------------- Variables for Project Configuration --------------------------
${MY_WEBSITE_URL}    http://127.0.0.1:5000/
${MY_BROWSER_1}    firefox
${MY_BROWSER_2}    chrome

# ------------ Variables For index Page Section -----------------------------

${HOME_BUTTON_TEXT}                        HOME
${OUR_TEAM_BUTTON_TEXT}                    OUR_TEAM
${CONTENT_BUTTON_TEXT}                     CONTENT
${DISCOVER_MORE_BUTTON_TEXT}               Discover more
${MENU_BUTTON_IMAGE_XPATH}                 //*[@id="icon-menu"]/img
${OUR_TEAM_BUTTON_XPATH}                   /html/body/div[1]/div/nav/ul/li[2]/a
${CONTENT_BUTTON_XPATH}                    /html/body/div[1]/div/nav/ul/li[3]/a

# --------------- Variables for OUR Team Page -----------------------------

${CHECK_OUMAYMA_INFO_BOX_TEXT}             Oumayma Guizeni
${CHECK_RANIA_INFO_BOX_TEXT}               Rania Zribi
${CHECK_EMNA_INFO_BOX_TEXT}                Emna Bejaoui
${CHECK_MOHAMED_INFO_BOX_TEXT}             Mohamed Gharsalli
${CHECK_EYA_INFO_BOX_TEXT}                 Eya Khemiri
${CHECK_ZOUBAIDA_INFO_BOX_TEXT}            Zoubaida Hleli
${CHECK_CHEDI_INFO_BOX_TEXT}               Chedi Ahmed

${CHECK_OUMAYMA_IMAGE_XPATH}                /html/body/div[2]/div/div/div[2]/img
${CHECK_RANIA_IMAGE_XPATH}                  /html/body/div[3]/div/div/div[1]/img
${CHECK_EMNA_IMAGE_XPATH}                   /html/body/div[4]/div/div/div[2]/img               
${CHECK_MOHAMED_IMAGE_XPATH}                /html/body/div[5]/div/div/div[1]/img          
${CHECK_EYA_IMAGE_XPATH}                    /html/body/div[6]/div/div/div[2]/img
${CHECK_ZOUBAIDA_IMAGE_XPATH}               /html/body/div[7]/div/div/div[1]/img
${CHECK_CHEDI_IMAGE_XPATH}                  /html/body/div[8]/div/div/div[2]/img

# --------------- Variables for OUR Content Page -----------------------------

${MENU_LIST_XPATH}                                                      /html/body/div[1]/div/nav/div/div
${INTRODUCTION_BUTTON_TEXT}                                             Introduction
${TYPES_OF_SOFTWARE_TESTING_BUTTON_TEXT}                                Types of Softawre Testing
${TOOLS_FOR_AUTOMATION_TESTING_BUTTON_TEXT}                             Tools for Automation Testing
${REAL_WORLD_APPLICATIONS_BUTTON_TEXT}                                  Real-world app
${CONCLUSION_BUTTON_TEXT}                                               Conclusion
${INTRODUCTION_TEXT_IN_CONTENT_PAGE_XPATH}                              //*[@id="Introduction"]/h1
${TYPES_OF_SOFTWARE_TESTING_TEXT_IN_CONTENT_PAGE_XPATH}                 //*[@id="Types_of_Software_Testing"]/h1
${PRINCIPELS_OF_TESTING_TEXT_IN_CONTENT_PAGE_XPATH}                     /html/body/div[2]/h2[1]
${TYPES_OF_TESTING_TEXT_IN_CONTENT_PAGE_XPATH}                          /html/body/div[2]/h2[2]