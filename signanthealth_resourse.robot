*** Settings ***
Library           Selenium2Library

*** Variables ***
${SERVER}         http://localhost:8080
${BROWSER}        chrome
${DELAY}          0
${VALID USER}     Uma
${VALID PASSWORD}    durai
${LOGIN URL}      ${SERVER}/login
${WELCOME URL}    ${SERVER}/user
${ERROR URL}      ${SERVER}/error

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Log In - Demo App

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button    Log In

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    Welcome Page