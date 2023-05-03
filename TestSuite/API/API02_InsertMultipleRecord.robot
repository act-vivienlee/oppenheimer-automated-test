*** Settings ***
Documentation   Test Script for /calculator/insertMultiple API
Resource        ../../StepDefinition/Utils/util.robot
Resource        ../../StepDefinition/Utils/commonFiles.robot
Resource        ../../StepDefinition/calculator-controller/calculator.robot


*** Variables ***
${validBodyFileDir}  ${/}Config${/}Data${/}json${/}multiple-records-list_01.json
${invalidBodyFileDir}  ${/}Config${/}Data${/}json${/}multiple-records-list_INVALID.json


*** Test Cases ***
TS01 [TC01] Insert Valid Body into /calculator/insertMultiple API
    [Tags]  API-US02
    ${baseDir}=  get file path
    ${body}=  Get File  ${baseDir}${validBodyFileDir}
    When a POST request is made for  api=${calInsertMultipleAPI}  body=${body}
    Then the response code should be correct  200

TS01 [TC02] Insert Invalid Body into /calculator/insertMultiple API
    [Tags]  API-US02
    ${baseDir}=  get file path
    ${body}=  Get File  ${baseDir}${invalidBodyFileDir}
    When a POST request is made for  api=${calInsertMultipleAPI}  body=${body}
    Then the response code should be correct  500
