*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
Go To Web Page
    Load Page
    Verify Page Loaded
Load Page
    Maximize Browser Window
    Go To  ${URL}
Verify Page Loaded
    Wait Until Page Contains  Om MediaMarkt
Search For Product
     [Arguments]  ${search_term}  ${search_result}
     Enter Search Term  ${search_result}
     Submit Search
     Verify Search Completed  ${search_result}
Enter Search Term
     [Arguments]  ${search_term}
     Input Text  //*[@id="search-autocomplete"]/form/input[1]  ${search_term}
Submit Search
     Press Keys  //*[@id="search-autocomplete"]/form/input[1]  RETURN
Verify Search Completed  #här skall det stå verify page loaded men det funkar nog inte att ha flera likadan keywords...
     [Arguments]  ${search_result}
     Wait Until Page Contains  ${search_result}
End Web Test
    Close Browser