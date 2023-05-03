*** Settings ***
Documentation   Test Script for Webpages
Resource        ../../StepDefinition/Utils/commonFiles.robot
Resource        ../../StepDefinition/homepage/homepage.robot
Suite Teardown  Close All Browsers


*** Variables ***
${csvFile}  ${/}Config${/}Data${/}test.csv


*** Test Cases ***
TS01 [TC01] Navigate to Oppenheimer Project Landing page
    [Documentation]  TS01 Uploading of CSV File
    Given that the user has executed the java application
    And open the browser successfully
    When navigate to the Oppenheimer Project homepage
    Then the user should be directed to the Oppenheimer Project homepage
    And the File Upload component should be displayed

TS01 [TC02] Upload CSV File via Webpage
    [Documentation]  TS01 Uploading of CSV File
    Given that the user is on the Oppenheimer Project homepage
    ${baseDir}=  get file path
    When select a file to be uploaded  ${baseDir}${csvFile}
    Then the file should be selected successfully  ${baseDir}${csvFile}
