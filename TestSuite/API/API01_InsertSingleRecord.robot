*** Settings ***
Documentation   Test Script for /calculator/insert API
Library         DataDriver  ../../Config/Data/permutation_test_data.xlsx  sheet_name=insertSingle
Resource        ../../StepDefinition/Utils/util.robot
Resource        ../../StepDefinition/calculator-controller/calculator.robot
Test Template   FT-POSTCalculatorInsertAPI


*** Test Cases ***
TC InsertSingleRecord '${natId}' and '${name}' and '${gender}' and '${birthday}' and '${salay}' and '${taxPaid}' and '${code}'
    [Tags]  API-US01


*** Keywords ***
FT-POSTCalculatorInsertAPI
    [Arguments]  ${natId}  ${name}  ${gender}  ${birthday}  ${salary}  ${taxPaid}  ${code}
    Given that the request body for POST insert has been prepared  ${natId}  ${name}  ${gender}  ${birthday}
    ...  ${salary}  ${taxPaid}
    When a POST request is made for  api=${calInsertAPI}  body=${insertString}
    Then the response code should be correct  ${code}
