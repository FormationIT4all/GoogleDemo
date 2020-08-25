*** Settings ***
 
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://www.google.com/
${BROWSER}        Chrome

*** Test Cases ***
Valid Recherche
    Open Browser To recherche Page
    
    Input Zonederecherche    IT4ALL
    
    Submit Credentials
    
*** Keywords ***
Open Browser To recherche Page
    Open Browser    ${LOGIN URL}    ${BROWSER}

Input Zonederecherche
    [Arguments]    ${username}
    Input Text    //*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input    ${username}

Submit Credentials
     Submit Form    

