*** Settings ***
Documentation  This step file contains the keywords for all the user-created Selenium Keywords


*** Keywords ***
assertExist
    [Arguments]  ${element}  ${expectedTimeout}=10
    [Documentation]  This keyword waits until the given element exists and is visible for ${expectedTimeout}s
    Wait Until Page Contains Element  ${element}  timeout=${expectedTimeout}
    Wait Until Element Is Visible  ${element}  timeout=${expectedTimeout}

assertText
    [Arguments]  ${element}  ${message}
    [Documentation]  This keyword verifies that the text for the given element (${element}) should be ${message}
    Element Text Should Be  ${element}  ${message}

assertExistAndAssertText
    [Arguments]  ${element}  ${message}  ${expectedTimeout}=10
    assertExist  ${element}
    assertText  ${element}  ${message}
