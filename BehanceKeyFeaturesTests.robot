*** Settings ***
Documentation     An example test file with Behance key features tests - Featured, Careers, Search
...              
...
Resource          Settings.robot
Resource          ${RESOURCE DIR}/BehanceKeywords.robot

#Suite Setup       Remove files  report.html  output.xml   log.html
Test Setup        Open Browser to Home Page
Test Teardown     Close Browser
Test Timeout      15 seconds

*** Test Cases ***
Discover Random Project
    [Tags]  Discover
    Go To Featured Page
    Choose Random Project
    View Details Of Project
    Close Project Details

Discover Specific Project
    [Tags]  Discover
    Go To Featured Page
    Choose Specific Project     10
    View Details Of Project
    Close Project Details

Browse Careers Page
    [Tags]  Careers
    Go To Careers Page
    Search Keywords     Quality
    Choose Random Job Offer
    View Job Offer Details
    #Apply For Job Offer

Search Behance
    [Tags]  Search
    Go To Search Page
    Search Behance  Christmas tree
    Choose Specific Project     1
    View Details Of Project
    Close Project Details