*** Settings ***
Library           Selenium2Library
Library           BuiltIn

*** Input ***

*** Test Cases ***
Heidi's First testcase
    Open Browser    https://www.google.fi    browser=chrome
    Location Should Be    https://www.google.fi/
    Input Text  id:lst-ib  helsingin sanomat
	Press Key    lst-ib    \\13
	Wait Until Page Contains    https://www.hs.fi    10 s
    Go To  https://github.com/aalperi/
    [teardown]  Close Browser
*** comment  ***
Heidin kommentti.

