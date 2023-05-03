*** Settings ***
Documentation   This step file contains the common/reusable keywords
Library         ../../Lib/standardRequestMethod.py
Variables       ../../POM/variables.yaml
Variables       ../../POM/APIs.yaml


*** Keywords ***
Convert Dictionary to JSON
    [Documentation]  This keyword converts a given dictionary to JSON
    [Arguments]  ${dict}
    ${json}=  Evaluate  json.dumps(${dict}, separators=(",", ":"))  json
    RETURN  ${json}

a POST request is made for
    [Documentation]  This is a keyword that can be used for all POST API requests
    [Arguments]  ${api}=${calInsertAPI}  ${body}=${insertString}
    Log To Console  a POST request is made for /${api}
    ${response}=  post request service  url=${baseURL}${api}  data_body=${body}
    Log  ${response.content}
    Set Test Variable  ${response}

a GET request is made for
    [Documentation]  This is a keyword that can be used for all GET API requests
    [Arguments]  ${api}=${calInsertAPI}
    Log To Console  a GET request is made for /${api}
    ${response}=  get request service  url=${baseURL}${api}
    Log  ${response.content}
    Set Test Variable  ${response}

the response code should be correct
    [Documentation]  This is a keyword that verifies the response code based on a given one
    [Arguments]  ${code}=200
    Log To Console  the response code should be correct - ${code}
    Should Be Equal As Strings  ${response.status_code}  ${code}

open the browser successfully
    [Arguments]  ${alias}=chrome-01
    [Documentation]  This is a keyword that opens a chrome browser
    Open Browser  ${baseURL}  ${browser}  alias=${alias}
    Maximize Browser Window
