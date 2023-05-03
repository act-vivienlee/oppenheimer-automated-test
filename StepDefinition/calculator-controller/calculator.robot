*** Settings ***
Documentation   This file contains all the step-definitions for the keywords to be used for all calculator-controller APIs
Library         SeleniumLibrary
Library         String
Resource        ../Utils/util.robot


*** Keywords ***
that the request body for POST insert has been prepared
    [Documentation]  This keyword prepares the request body needed for the /calculator/insert API
    [Arguments]  ${natId}  ${name}  ${gender}  ${birthday}  ${salary}  ${taxPaid}
    Log To Console  (1) Create a dictionary
    ${insertDict}=  Create Dictionary  birthday=${birthday}  gender=${gender}  name=${name}  natid=${natId}
    ...  salary=${salary}  tax=${taxPaid}

    Log To Console  (2) Convert the Dictionary to JSON
    ${insertJSON}=  Convert Dictionary to JSON  ${insertDict}

    Log To Console  (3) Convert the JSON to String
    ${insertString}=  Convert To String  ${insertJSON}
    Set Suite Variable  ${insertString}
