*** Settings ***
Documentation     Behance Locators File
...               Variables are used for locating elements on pages
...

*** Variables ***
# Behance Header menu locators - always available
${GLO BEHANCE LOGO}             xpath://*[@class="rf-logo rf-logo--behance']
${GLO FEATURED SECTION}         xpath://li/a[contains(@class,'rf-primary-nav__link')][contains(@href,'featured')]
${GLO CAREERS SECTION}          xpath://li/a[contains(@class,'rf-primary-nav__link')][contains(@href,'joblist')]
${GLO SEARCH BUTTON}            xpath://li/a[contains(@class,'rf-primary-nav__link')][contains(@href,'search')]
${ACCEPT COOKIES BUTTON}        xpath://button[@id='_evidon-accept-button']

# Home page locators

# Featured page locators
${FEAT PROJECT COVERS}          xpath://a[contains(@class,'rf-project-cover__title')]

# Careers page locators

# Search page locators
