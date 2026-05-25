*** Settings ***
Library    Browser
Resource    ../../Automation_RobotFramework/EnvironmentDetails/env.robot

*** Keywords ***
LoginBrowser
    Open Browser    ${url}    firefox    headless=false
    Sleep    5s
    Fill Text    ${username}    mathankumar9488@gmail.com
    Fill Text    ${password}    Mathan9488@1
    Click    ${submit}