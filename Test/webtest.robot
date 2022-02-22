*** Settings ***
Documentation  Some basic information abouth the whole test suite
Library  SeleniumLibrary

*** Test Cases ***
User Can Acess Website
       [Documentation]  This is some basic informtation about the test
       [Tags]  Test 1
       Open Browser  about:blank  chrome
       Go To  https://www.mediamarkt.se
       Wait Until Page Contains  Om MediaMarkt