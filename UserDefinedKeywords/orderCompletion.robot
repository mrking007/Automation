*** Settings ***
Library    Browser    auto_closing_level=KEEP
Resource    ../../Automation_RobotFramework/objectRepository/orderCompletion.robot

*** Keywords ***
OrderCompletion
    Wait For Elements State    ${AddToCart}    enabled    20s
    Click    ${AddToCart}
    ${url}    Get Url
    IF     '${url} == https://rahulshettyacademy.com/client/#/dashboard/dash' 
        Log    Dashboard page is reached
    ELSE
        Fail  Dashboard page not reached
    END
    ${actual}    Get Text    selector=${thoastMessage}
    Should Be Equal As Strings    ${actual}    ${expected}
    Click    ${cartPage}
    Go To    https://rahulshettyacademy.com/client/#/dashboard/cart
    Click    ${checkOut}
    Wait For Elements State    ${selectCountry}    enabled    20s
    Fill Text    ${selectCountry}     India
    Click    ${clickSearch}
    Wait For Elements State    ${placeOrder}    enabled    20s
    Click    ${placeOrder}


    
