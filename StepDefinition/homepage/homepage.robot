*** Settings ***
Documentation   Suite description
Resource        ../../StepDefinition/Utils/seleniumKeywords.robot


*** Keywords ***
the "Refresh Tax Relief Table" button should be displayed
    Log To Console  the "Refresh Tax Relief Table" button should be displayed
    assertExist  ${btnRefreshTaxRelief}

click on the "Refresh Tax Relief Table" button
    Log To Console  click on the "Refresh Tax Relief Table" button
    Click Element  ${btnRefreshTaxRelief}

the "Visit Swagger" button should be displayed
    Log To Console  the "Visit Swagger" button should be displayed
    assertExist  ${btnVisitSwagger}

the File Upload component should be displayed
    Log To Console  the File Upload component should be displayed
    Wait Until Page Contains Element  ${fileUpload}  10s

click on the "Visit Swagger" button
    Log To Console  click on the "Refresh Tax Relief Table" button
    Click Element  ${btnVisitSwagger}

the Tax Relief table should be displayed
    Log To Console  the Tax Relief table should be displayed
    assertExist  ${tbTaxRelief}

the Tax Relief table header should be displayed correctly
    Log To Console  the Tax Relief table header should be displayed correctly
    ${count}=  Get Length  ${taxReliefTableHeaders}
    ${index}=  Set Variable  1
    FOR  ${i}  IN RANGE  0  ${count}
        assertExist  ${tbTaxRelief}/thead/tr/th[${index}]
        ${actual}=  Get Text  ${tbTaxRelief}/thead/tr/th[${index}]
        Should Be Equal As Strings  ${actual}  ${taxReliefTableHeaders}[${i}]
        ${index}=  Evaluate  ${index} + 1
    END

the record(s) should be displayed in the Tax Relief table
    [Arguments]  ${natIdList}  ${reliefList}
    Log To Console  the record should be displayed in the Tax Relief table
    ${listIndex}=  Set Variable  0
    ${rowCount}=  Get Element Count  ${tbTaxRelief}/tbody/tr
    ${endIndex}=  Evaluate  ${rowCount} + 1
    FOR  ${i}  IN RANGE  1  ${endIndex}
        assertExistAndAssertText  ${tbTaxRelief}/tbody/tr[${i}]/td[1]  ${natIdList}[${listIndex}]
        assertExistAndAssertText  ${tbTaxRelief}/tbody/tr[${i}]/td[2]  ${reliefList}[${listIndex}]
        ${listIndex}=  Evaluate  ${listIndex} + 1
    END

select a file to be uploaded
    [Arguments]  ${fullFilePath}
    Log To Console  click on the File Upload to browse a file
    Choose File  ${fileUpload}  ${fullFilePath}

the file should be selected successfully
    [Arguments]  ${fullFilePath}
    assertExistAndAssertText  ${selectedFileLabel}  ${fullFilePath}

the "Dispense Now" button should be displayed
    Log To Console  the "Dispense Now" button should be displayed
    assertExist  ${btnDispenseNow}

click on "Dispense Now" button
    the "Dispense Now" button should be displayed
    Log To Console  click on "Dispense Now" button
    Click Element  ${btnDispenseNow}

the Tax Relief should be dispensed successfully
    Log To Console  the Tax Relief should be dispensed successfully
    Capture Page Screenshot  filename=dispensedTaxRelief.png
    assertExistAndAssertText  //div[@class="display-4 font-weight-bold"]  Cash dispensed

