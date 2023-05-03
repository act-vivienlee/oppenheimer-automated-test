*** Settings ***
Documentation   Suite description
Resource        ../../StepDefinition/Utils/seleniumKeywords.robot


*** Keywords ***
navigate to the Oppenheimer Project homepage
    [Documentation]  This keyword provides the step to navigate to the homepage
    Log To Console  navigate to the Oppenheimer Project homepage
    Go To  ${baseURL}

the user should be directed to the Oppenheimer Project homepage
    [Documentation]  This keyword ensures that the user is at the homepage
    Log To Console  the user should be directed to the Oppenheimer Project homepage
    assertExistAndAssertText  ${pageTitle}  ${oppenheimerTitle}
