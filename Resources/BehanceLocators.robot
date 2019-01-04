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
${PROJECT CONTENT IMAGES}               //img[contains(@class,'js-project-module--picture')]
${PROJECT CLOSE BUTTON}                 //div[@class='js-close-dialog']/*[contains(@class,'rf-icon')]

# Featured page locators
${FEAT PROJECT COVERS}                  //img[contains(@class,'rf-project-cover__image')]
${FEAT PROJECT TITLES}                  //a[contains(@class,'rf-project-cover__title')]
${FEAT PROJECT FIELD}                   //a[contains(@class,'rf-project-cover__field')]

# Careers page locators
${CAREERS KEYWORD INPUT FIELD}          //input[contains(@name,'search')]
${CAREERS JOB OFFER}                    //div[contains(@class,'job-title')]/a
${JOB OFFER TITLE}                      //span[contains(@class,'job-title')]
${JOB OFFER COMPANY}                    //div[contains(@class,'company-name')]
${JOB OFFER LOCATION}                   //div/h2[contains(@class,'job-location')]
${JOB OFFER DETAILS}                    //div[contains(@class,'job-description')]
${CAREERS LOADING RESULTS INDICATOR}    //div[contains(@class,'be-spinner')]

# Search page locators
${SEARCH BEHANCE INPUT FIELD}           //input[@name='search']
${SEARCH LOADING RESULTS INDICATOR}     //div[contains(@class,'loading-spinner')]
