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
    ${actual}    Get Text    css=#toast-container    5s
    Should Be Equal As Strings    ${actual}    ${expected}
    Click    ${cartPage}
    ${cartUrl}    Get Url
    # IF    '${cartUrl} == https://rahulshettyacademy.com/client/#/dashboard/cart'
    #     Pass Execution    message=Successfully redirected to cart page
    # ELSE
    #     Fail
        
    # END

    
