*** Settings ***
Documentation       Settings File. 
...                 This file is used to store settings, libraries and global variables

Library             SeleniumLibrary         screenshot_root_directory=${OUTPUT DIR}/Screenshot  run_on_failure=Capture Page Screenshot
Library             OperatingSystem

*** Variables ***
${BROWSER}          Chrome
${DELAY}            0
${RESOURCE DIR}     Resources
${OUTPUT DIR}       /Report
${HOST}             www.behance.net
${APP URL}          https://${HOST}/