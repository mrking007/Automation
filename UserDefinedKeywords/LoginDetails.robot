*** Settings ***
Library    Browser    auto_closing_level=KEEP
Resource    ../../Automation_RobotFramework/EnvironmentDetails/env.robot

*** Keywords ***
LoginBrowser
    Set Browser Timeout    20s
    Open Browser    ${url}    firefox    headless=false
    Fill Text    ${username}    mathankumar9488@gmail.com
    Fill Text    ${password}    Mathan9488@1
    ${promise}=   Promise To    Wait For Response    https://rahulshettyacademy.com/api/ecom/auth/login
    Click    ${submit}
    ${response}    Wait For    ${promise}
    IF    ${response.status} != 200
            Fail    ${response.body}
    END