*** Settings ***
Library    Browser
Resource    ../../Automation_RobotFramework/objectRepository/orderCompletion.robot

*** Keywords ***
OrderCompletion
    Wait For Elements State    ${AddToCart}    visible
