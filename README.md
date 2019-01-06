Behance with Robot Framework and SeleniumLibrary
================================================

I have chosen `Robot Framework` for automation backed with python 3.
Mainly because I am learning it now, and I thought I can also benefit from the task You requested.

Installation instructions
=========================

In order to run tests You need following pre-requisites:

- Clone this project OR Download/Extract this project
- `Python 3` installed with `pip` and added to system PATH
- Installed `robotframework` and `robotframework-seleniumlibrary` using `pip`
- Downloaded `ChromeDriver` from here for your respective OS
- Have Google `Chrome v71` (Google-Chrome-Stable for Unix) installed with `ChromeDriver v2.45`
- Added browser engine (in this example, Chrome) to system `PATH` so robot can find it 
- Run command line for robot and test suite

Python3 and pip
--------------

On Windows, just download package from:
https://www.python.org/downloads/
and select `install pip` and `add to PATH` during instalation setup.

On Linux to install `Python` with `pip` it is easiest to run command:
    sudo apt-get install python3-pip

Robot framework and selenium library
------------------------------------

On Windows open command window, on Linux terminal.
To install Robot Framework and SeleniumLibrary along with its dependencies 
using `pip` package manager run these commands:

    pip install robotframework
    pip install robotframework-seleniumlibrary

Chrome and chromedriver
-----------------------

First download chromedriver for your OS here:
https://chromedriver.storage.googleapis.com/index.html?path=2.45/

Unpack your driver to a catalogue You want. On Linux it is recommended to unpack it to /usr/local/bin
(same location that robot and rebot scripts are installed by robotframework) 

Adding chromedriver to path can be done using this command:
    export PATH=$PATH:/usr/local/bin
It must be done so robot can find the driver when running.

Make sure You have installed Google Chrome browser in system. If it is not added to the path,
add it as well.

To check if everything is working fine You should be able to execute commands:
python3 --version
robot --version
google-chrome --version

Using different OS - Unix
-------------------------

On Unix if we need to make sure user has rights to execute commands.
It is required for robot and rebot scripts to have access to output files for example.
That is why we will use `sudo` before each command requiring permissions on linux.

Possible troubleshooting:
- sometimes you need to make chromedriver executable
    chmod +x /usr/local/bin/chromedriver
- there are issues reported in seleniumlibrary bug tracker regarding open browser keyword
  and some issues prevent launching of the browser (tested on Ubuntu)
- different linux distributions use different approaches to package management so refer to Your OS manual for guidance

Test cases
==========

Test suite file with test cases as well as a settings file used by them are located in main directory.
Resource files with keywords and variables are in Resources folder.

`BehanceKeyFeaturesTests.robot`

Total of 1 test suite is available with 4 tests
- Discover Random Project
- Discover Specific Project
- Browse Careers Page
- Search Behance

Test cases are tagged. This allows for filtering test cases to run. 
See section Running tests for more information.

`Settings.robot`

A resource file with reusable variables, browser and behance settings.

`BehanceKeywords.robot`

This file contains all keywords used in test cases. 
Imports locators from behancelocators.robot file for use.

`BehanceLocators.robot`

This file contains all variables with xpath locators that test cases use.
If test suite got larger it would be wise to divide keywords with locators to different files.

Generated results
=================

After `running tests` you will get report and log in HTML format. Output xml file is also
generated, if you want to post-process results.  

- `report.html`
- `output.xml`
- `log.html`

Running tests
-------------

The `test cases`_ are located in the root directory. They can be
executed using the ``robot`` command in command line/unix terminal

    robot BehanceKeyFeaturesTests.robot

You can also run an individual test case file or and use various command line
options supported by Robot Framework::

    sudo robot --test DiscoverRandomProject BehanceKeyFeaturesTests.robot

Or You can use tags to run only specific subset of test cases::

    sudo robot --include Discover BehanceKeyFeaturesTests.robot

Using different browsers
------------------------
The browser that is used is controlled by ``${BROWSER}`` variable defined in 
`Settings.robot` though I had not tested on other than chrome.
Headless chrome will work after I add support for non-maximized window. 
Behance changes its menu when page is smaller and standard menu does not fit.
I simply do not have time to support 3 browsers for demo project. :)

Related documents
=================

For Referrence:
.. _Robot Framework: http://robotframework.org
.. _Robot Framework User Guide: http://robotframework.org/robotframework/#user-guide
.. _Robot Framework Installation instructions: https://github.com/robotframework/robotframework/blob/master/INSTALL.rst
.. _SeleniumLibrary: https://github.com/robotframework/SeleniumLibrary
.. _SeleniumLibrary Installation instructions: https://github.com/robotframework/SeleniumLibrary/blob/master/INSTALL.rst
.. _Python: http://python.org
.. _pip: http://pip-installer.org