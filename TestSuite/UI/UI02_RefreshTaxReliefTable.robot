*** Settings ***
Documentation   Test Script for Webpages
Resource        ../../StepDefinition/Utils/commonFiles.robot
Resource        ../../StepDefinition/homepage/homepage.robot
Suite Teardown  Close All Browsers


*** Variables ***
${workingClassNatId01}  S100$$$$$
${workingClassNatId02}  S101$$$$$
${workingClassNatId03}  S102$$$$$
${workingClassNatId04}  S103$$$$$

${workingClassRelief01}  2240.00
${workingClassRelief02}  1479.60
${workingClassRelief03}  2375.00
${workingClassRelief04}  719.60


*** Test Cases ***
TS01 [TC01] Navigate to Oppenheimer Project Landing page
    [Documentation]  TS01 Tax Relief Calculation
    [Tags]  UI-US04
    Given that the user has executed the java application
    And open the browser successfully
    When navigate to the Oppenheimer Project homepage
    Then the user should be directed to the Oppenheimer Project homepage
    And the "Refresh Tax Relief Table" button should be displayed
    And the "Visit Swagger" button should be displayed
    And the Tax Relief table should be displayed

TS01 [TC02] Display Tax Amount for Each Person
    [Documentation]  TS01 Tax Relief Calculation
    [Tags]  UI-US04
    Given that the user is on the Oppenheimer Project homepage
    And has inserted at least 1 working class hero record
    When click on the "Refresh Tax Relief Table" button
    ${listOfNatIds}=  Create List  ${workingClassNatId01}  ${workingClassNatId02}  ${workingClassNatId03}  ${workingClassNatId04}
    ${listOfReliefs}=  Create List  ${workingClassRelief01}  ${workingClassRelief02}  ${workingClassRelief03}  ${workingClassRelief04}
    Then the Tax Relief table header should be displayed correctly
    And the record(s) should be displayed in the Tax Relief table  natIdList=${listOfNatIds}  reliefList=${listOfReliefs}
