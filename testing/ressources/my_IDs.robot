# This file contain the IDs used during the Test
# Date: 23/03/2024   Author: Oumayma Guizeni

*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/my_keywords.robot


*** Variables ***
${MY_WEBSITE_URL}    http://127.0.0.1:5000/
${MY_BROWSER_1}    firefox
${MY_BROWSER_2}    chrome

${HOME_BUTTON}                        HOME
${OUR_TEAM_BUTTON}                    OUR_TEAM
${CONTENT_BUTTON}                     CONTENT
${DISCOVER_MORE_BUTTON}               Discover more
${MENU_BUTTON}                        /html/body/div[1]/div/nav/a/img

${CHECK_OUMAYMA_INFO_BOX}             Oumayma Guizeni
${CHECK_RANIA_INFO_BOX}               Rania Zribi
${CHECK_EMNA_INFO_BOX}                Emna Bejaoui
${CHECK_MOHAMED_INFO_BOX}             Mohamed Gharsalli
${CHECK_EYA_INFO_BOX}                 Eya Khemiri
${CHECK_ZOUBAIDA_INFO_BOX}            Zoubaida Hleli
${CHECK_CHEDI_INFO_BOX}               Chedi Ahmed

${CHECK_OUMAYMA_IMAGE}                /html/body/div[2]/div/div/div[2]/img
${CHECK_RANIA_IMAGE}                  /html/body/div[3]/div/div/div[1]/img
${CHECK_EMNA_IMAGE}                   /html/body/div[4]/div/div/div[2]/img               
${CHECK_MOHAMED_IMAGE}                /html/body/div[5]/div/div/div[1]/img           
${CHECK_EYA_IMAGE}                    /html/body/div[6]/div/div/div[2]/img
${CHECK_ZOUBAIDA_IMAGE}               /html/body/div[7]/div/div/div[1]/img
${CHECK_CHEDI_IMAGE}                  /html/body/div[8]/div/div/div[2]/img