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
    Wait Until Element Is Visible       ${GLO FEATURED SECTION}
    Click Element      ${GLO FEATURED SECTION}
    Page Should Contain Element     ${FEAT PROJECT COVERS}
    #additional assertions here optional for checking if page loaded properly

Go To Careers Page
    Wait Until Element Is Visible       ${GLO CAREERS SECTION}
    Click Element      ${GLO CAREERS SECTION}
    Page Should Contain Element   ${CAREERS KEYWORD INPUT FIELD}  

Go To Search Page
    Wait Until Element Is Visible       ${GLO SEARCH BUTTON}
    Click Element      ${GLO SEARCH BUTTON}
    Page Should Contain Element     ${SEARCH BEHANCE INPUT FIELD}

# Project specific keywords
Choose Random Project
    ${random int}   Evaluate    random.randint(1,10)    modules=random
    Click Element       (${FEAT PROJECT COVERS})[${random int}]   

Choose Specific Project
    [Arguments]         ${project number}
    Scroll Element Into View        (${FEAT PROJECT COVERS})[${project number}]
    Wait Until Element is Visible   (${FEAT PROJECT COVERS})[${project number}]
    Click Element                   (${FEAT PROJECT COVERS})[${project number}]

Close Project Details
    Click Element                       ${PROJECT CLOSE BUTTON}
    Capture Page Screenshot

View Details Of Project
    Wait Until Page Contains Element    ${PROJECT CONTENT IMAGES}
    Page Should Contain Element         ${PROJECT CONTENT PROJECT TITLE}
    Scroll Element Into View            ${PROJECT CONTENT COMMENTS SECTION}
    Scroll Element Into View            ${PROJECT CONTENT PROJECT TITLE}
    Capture Page Screenshot

# Featured page keywords

# Careers page keywords
Search Keywords
    [Documentation]     Search keyword and press enter to show results
    [Arguments]     ${search keyword}
    Input Text      ${CAREERS KEYWORD INPUT FIELD}       ${search keyword}
    Press Key       ${CAREERS KEYWORD INPUT FIELD}       \\13
    Wait Until Element Is Not Visible    ${CAREERS LOADING RESULTS INDICATOR}

Choose Random Job Offer
    ${count offers}     Get Element Count   ${CAREERS JOB OFFER}
    ${random int}       Evaluate            random.randint(1,${count offers})    modules=random

    # Boundary values coverage
    Run Keyword If  ${random int} > 0 and ${random int} < ${count offers}       Scroll Element Into View        (${CAREERS JOB OFFER})[${random int}+1]
    Run Keyword If  ${random int} == ${count offers}                            Scroll Element Into View        (${CAREERS JOB OFFER})[${random int}]

    Capture Page Screenshot
    Click Link          (${CAREERS JOB OFFER})[${random int}]
    
View Job Offer Details
    Wait Until Page Contains Element    ${JOB OFFER COMPANY}
    Page Should Contain Element         ${JOB OFFER TITLE}
    Page Should Contain Element         ${JOB OFFER LOCATION}
    Page Should Contain Element         ${JOB OFFER DETAILS}
    Capture Page Screenshot

# Search page keywords
Search Behance
    [Arguments]     ${search keyword}
    Input Text      ${SEARCH BEHANCE INPUT FIELD}       ${search keyword}
    Press Key       ${SEARCH BEHANCE INPUT FIELD}       \\13
    Wait Until Element Is Not Visible    ${SEARCH LOADING RESULTS INDICATOR}
