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
    Fill Text    ${selectCountry}     in
    Wait For Elements State    ta-results      visible    timeout=5s
    Click    section.ta-results >> text=" Argentina"
    Wait For Elements State    ${placeOrder}    enabled    20s
    Click    ${placeOrder}
    # ${actual}    Get Text    //*[@aria-label="Order Placed Successfully"]
    # Should Be Equal As Strings    ${actual}    ${ExpectedorderConformationMessage}


    
