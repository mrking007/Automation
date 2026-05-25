*** Variables ***
${dashboard}    https://rahulshettyacademy.com/client/#/dashboard/dash
${orderItem}    //*[text()="ZARA COAT 3"]
${AddToCart}    (//button[contains(@class,"btn w-10 rounded")])[1]
${thoastMessage}    //*[@role="alert"]
${cartPage}    //*[@routerlink="/dashboard/cart"]
${checkOut}    //*[text()="Checkout"]
${selectCountry}    //*[@placeholder="Select Country"]
${placeHolder}    //*[text()="Place Order "]