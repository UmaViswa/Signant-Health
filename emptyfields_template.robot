*** Settings ***
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser
Test Setup        Go To Login Page
Test Template     Login With Invalid Credentials Should Fail
Resource          signanthealth_resourse.robot

*** Test Cases ***    USER NAME        PASSWORD
Empty Username        ${EMPTY}             ${VALID PASSWORD}
Empty Password        ${VALID USER} 	   ${EMPTY}
Empty Both            ${EMPTY}             ${EMPTY}


*** Keywords ***
Login With Invalid Credentials Should Fail
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Submit Credentials
    Login Should Have Failed

Login Should Have Failed
    Location Should Be    ${LOGIN URL}
    Title Should Be    Log In - Demo App