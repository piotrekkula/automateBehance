*** Settings ***
Documentation     Behance Locators File
...               Variables are used for locating elements on pages
...

*** Variables ***
# Behance Header menu locators - always available
${GLO BEHANCE LOGO}                     //*[@class="rf-logo rf-logo--behance']
${GLO FEATURED SECTION}                 //li/a[contains(@class,'rf-primary-nav__link')][contains(@href,'featured')]
${GLO CAREERS SECTION}                  //li/a[contains(@class,'rf-primary-nav__link')][contains(@href,'joblist')]
${GLO SEARCH BUTTON}                    //li/a[contains(@class,'rf-primary-nav__link')][contains(@href,'search')]

# Home page locators
${ACCEPT COOKIES BUTTON}                //button[@id='_evidon-accept-button']

# Project details page locators
${PROJECT CONTENT PROFILE NAME}         //div[contains(@class,'profile-list-name')]
${PROJECT CONTENT PROJECT TITLE}        //div[contains(@class,'project-title')]
${PROJECT CONTENT COMMENTS SECTION}     //div[@id='project-block-footer-comments']
${PROJECT CLOSE BUTTON}                 //div[@class='js-close-dialog']/*[contains(@class,'rf-icon')]

# Featured page locators
${FEAT PROJECT COVERS}                  //a[contains(@class,'rf-project-cover__title')]

# Careers page locators

# Search page locators
${SEARCH BEHANCE INPUT FIELD}           //input[@name='search']
${LOADING SEARCH RESULTS INDICATOR}     //div[contains(@class,'loading-spinner')]
