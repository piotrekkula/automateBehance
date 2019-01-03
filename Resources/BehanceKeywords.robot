*** Settings ***
Documentation     Behance user keywords used on every site of the portal.
...               These keywords are useful for all test cases.
...
Resource          BehanceLocators.robot

*** Keywords ***
#Set up and tear down keywords
Open Browser to Home Page
    Open Browser        ${APP URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}

    #Close Accept cookies dialogue if present
    ${count}    Get Element Count    ${ACCEPT COOKIES BUTTON}
    Run Keyword If  ${count} > 0    Accept Cookies Message
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
    Page Should Contain Element     ${FEAT PROJECT COVERS}

# Project specific keywords
Choose Random Project
    ${random int}   Evaluate    random.randint(0,10)    modules=random
    Click Element       (${FEAT PROJECT COVERS})[${random int}]   

Choose Specific Project
    [Documentation]     Choose number from 0 to 10. Larger numbers would require scrolling element into view which is not implemented.
    [Arguments]         ${projectnumber}
    Click Element       (${FEAT PROJECT COVERS})[${projectnumber}]

Close Project Details
    Click Element                       ${PROJECT CLOSE BUTTON}
    Capture Page Screenshot

View Details Of Project
    Wait Until Page Contains Element    ${PROJECT CONTENT COMMENTS SECTION}
    Page Should Contain Element         ${PROJECT CONTENT PROJECT TITLE}
    Capture Page Screenshot
    Scroll Element Into View            ${PROJECT CONTENT COMMENTS SECTION}
    Scroll Element Into View            ${PROJECT CONTENT PROJECT TITLE}

# Featured page keywords

# Careers page keywords

# Search page keywords
Search Behance
    [Arguments]     ${searchkeyword}
    Input Text      ${SEARCH BEHANCE INPUT FIELD}       ${searchkeyword}
    Press Key       ${SEARCH BEHANCE INPUT FIELD}       \\13
    Wait Until Element Is Not Visible    ${LOADING SEARCH RESULTS INDICATOR}


