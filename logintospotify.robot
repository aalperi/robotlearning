*** Settings ***
Documentation  Annetaan parametrina tunnukset ja kirjaudutaan sisään
Library           Selenium2Library
Library           BuiltIn

*** Variables ***
${URL}  https://www.spotify.com
${USERID}
${PWD}


*** Test Cases ***
Heidi's Second testcase
    Open Browser    ${URL}    browser=chrome
	Wait Until Page Contains    Kirjaudu sisään    10 s
	Click Element  id:header-login-link
	wait until page contains Element  id:login-button
	Input text  name:username  ${USERID}
	Sleep  10s
	Input password  name:password  ${PWD}
	Sleep  10s
    click element  id:login-button
	wait until page contains  Spotify  10s
	Click link  href:https://www.spotify.com/fi/account/overview/
	wait until page contains  Avaa verkkosoitin  10 s
	Click element  id:seg-hp-open-player
	wait until page contains  Made for you  10 s
	Click link  href:https://open.scdn.co/static/web-player.12411280.css
    [teardown]  Close Browser
*** comment  ***
Heidin kommentti.
robot --variable USERID:xx --variable PWD:xx logintospotify.robot

