*** Variables ***
${dashboard}    https://rahulshettyacademy.com/client/#/dashboard/dash
${orderItem}    //*[text()="ZARA COAT 3"]
${AddToCart}    (//button[contains(@class,"btn w-10 rounded")])[1]
${thoastMessage}    //*[@role="alert"]
${cartPage}    //button[@routerlink='/dashboard/cart']
${checkOut}    //*[text()="Checkout"]
${toastMessage}    //*[@aria-label="Product Added To Cart"]
${selectCountry}    //input[@placeholder="Select Country"]
${placeOrder}    //*[text()="Place Order "]
${cartUrl}    https://rahulshettyacademy.com/client/#/dashboard/cart
${clickSearch}    (//*[@class="fa fa-search"])[2]
${expected}     Product Added To Cart
${ExpectedorderConformationMessage}      Order Placed Successfully 