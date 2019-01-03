Behance with Robot Framework and SeleniumLibrary
================================================

I have chosen `Robot Framework` for automation backed with python 3.
Mainly because I am learning it now, and I thought I can connect that with the task You requested.

Installation instructions
=========================

In order to run tests You need following pre-requisites:

- Clone this project OR Download/Extract this project
- Have installed needed things:
    - Python 3 installed with pip and added to system PATH
    - installed robotframework and robotframework-seleniumlibrary using pip
    - downloaded Chrome from here for your respective OS: 
        https://chromedriver.storage.googleapis.com/index.html?path=2.45/
    - added browser engine (in this example, Chrome) to system PATH so robot can find it 
        (On Windows needs to be added manually)
- Run command line for robot and test suite

Python and pip
--------------

In practice it is easiest to install Robot Framework and
SeleniumLibrary along with its dependencies using `pip`_ package
manager. Once you have pip installed, all you need to do is running
these commands::

    pip install robotframework
    pip install robotframework-seleniumlibrary

Test cases
==========

Test case file as well as a resource file used by them are located in the root directory.

`BehanceKeyFeaturesTests.robot`_

Total of 1 test suite is available with 4 tests
- Discover Random Project
- Discover Specific Project
- Browse Careers Page
- Search Behance

Test cases are tagged. This allows for filtering test cases to run. 
See section Running tests for more information.

`Settings.robot`_

A resource file with reusable variables, browser and behance settings.

`BehanceKeywords.robot`_

This file contains all keywords used in test cases. 
Imports locators from behancelocators.robot file for use.

`BehanceLocators.robot`_

This file contains all variables with xpath locators that test cases use.
If test suite got larger it would be wise to divide keywords with locators to different files.

Generated results
=================

After `running tests`_ you will get report and log in HTML format. Output xml file is also
generated, if you want to post-process results.  

- `report.html`_
- `output.xml`_
- `log.html`_

Running tests
-------------

The `test cases`_ are located in the root directory. They can be
executed using the ``robot`` command::

    robot BehanceKeyFeaturesTests.robot

You can also run an individual test case file or and use various command line
options supported by Robot Framework::

    robot --test DiscoverRandomProject BehanceKeyFeaturesTests.robot

Or You can use tags to run only specific subset of test cases::

    robot --include Discover BehanceKeyFeaturesTests.robot

Using different browsers
------------------------

The browser that is used is controlled by ``${BROWSER}`` variable defined in 
`Settings.robot` though I had not tested on other than chrome.
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