*** Settings ***
Library    Browser    auto_closing_level=KEEP
Resource    ../../Automation_RobotFramework/objectRepository/orderCompletion.robot

*** Keywords ***
OrderCompletion
    Wait For Elements State    ${AddToCart}    enabled    20s
    Click    ${AddToCart}
    ${url}    Get Url
    IF     '${url} == https://rahulshettyacademy.com/client/#/dashboard/dash' 
        Pass Execution    Dashboard page is reached
    ELSE
        Fail  Dashboard page not reached  
    END
    
