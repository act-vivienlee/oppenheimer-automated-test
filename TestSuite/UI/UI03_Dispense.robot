*** Settings ***
Documentation   Test Script for Webpages
Resource        ../../StepDefinition/Utils/commonFiles.robot
Resource        ../../StepDefinition/homepage/homepage.robot
Suite Teardown  Close All Browsers


*** Test Cases ***
TS01 [TC01] Navigate to Oppenheimer Project Landing page
    [Documentation]  TS01 Dispense Tax Relief
    [Tags]  UI-US05
    Given that the user has executed the java application
    And open the browser successfully
    When navigate to the Oppenheimer Project homepage
    Then the user should be directed to the Oppenheimer Project homepage
    And the "Dispense Now" button should be displayed

TS01 [TC02] Dispense Tax Relief
    [Documentation]  TS01 Dispense Tax Relief
    [Tags]  UI-US05
    Given that the user is on the Oppenheimer Project homepage
    When click on "Dispense Now" button
    Then the Tax Relief should be dispensed successfully
