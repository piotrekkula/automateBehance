*** Settings ***
Documentation     Behance keywords used on every site of the portal.
...               These keywords are useful for all test cases.
...
Resource          BehanceLocators.robot

*** Keywords ***
#Set up and tear down
Open Browser to Home Page
    Open Browser        ${APP URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}

    #Close Accept cookies dialogue if present
    ${COUNT}    Get Element Count    ${ACCEPT COOKIES BUTTON}
    Run Keyword If  ${COUNT} > 0    Accept Cookies Message
    Get Window Titles

Accept Cookies Message
    Click Button   ${ACCEPT COOKIES BUTTON}

# Navigate to pages
Go To Featured Page
    Click Element      ${GLO FEATURED SECTION}
    Page Should Contain Element     ${FEAT PROJECT COVERS}
    #additional assertions here optional for checking if page loaded properly

Go To Careers Page
    Click Element      ${GLO CAREERS SECTION}
    Page Should Contain Element   ${GLO CAREERS SECTION}  

Go To Search Page
    Click Element      ${GLO SEARCH BUTTON}
    Page Should Contain Element     ${GLO SEARCH BUTTON}

Input Search
    [Arguments]    ${searchkeyword}
    Input Text    username_field    ${searchkeyword}

