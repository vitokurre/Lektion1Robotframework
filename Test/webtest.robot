*** Settings ***
Documentation  Some basic information abouth the whole test suite
Library  SeleniumLibrary

*** Keywords ***



*** Test Cases ***
User Can Acess Website And Search For Product
       [Documentation]  This is some basic informtation about the test
       [Tags]  Test 1
       # Begin Web Test
       Open Browser  about:blank  chrome

       Maximize Browser Window
       Go To  https://www.mediamarkt.se
       Wait Until Page Contains  Om MediaMarkt
       Input Text  //*[@id="search-autocomplete"]/form/input[1]  Game & Watch: The Legend of Zelda
       Press Keys  //*[@id="search-autocomplete"]/form/input[1]  RETURN
       Wait Until Page Contains  Game & Watch: The Legend of Zelda
       Close Browser

