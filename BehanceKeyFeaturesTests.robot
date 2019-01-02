*** Settings ***
Documentation     An example test file with Behance key features tests - Featured and Careers
...              
...
Resource          Settings.robot
Resource          ${RESOURCE DIR}/BehanceKeywords.robot

#Suite Setup       Remove files  report.html  output.xml   log.html
Test Setup        Open Browser to Home Page
Test Teardown     Close Browser

*** Test Cases ***
Discover Random Featured
    Go To Featured Page

Browse Careers Page
    Go To Careers Page

Search Behance
    Go To Search Page