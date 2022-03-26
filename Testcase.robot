*** Setting ***
Resource  resource.robot
Suite Setup         Open Browser  ${URL}  ${BROWSER}  options=add_argument("--disable-notifications")
Suite Teardown      Close Browser

*** Test Cases ***
Register
     Go to Register
     Input Email         testpomeloqa@abc.com
     Input Firstname     pomelo
     Input Lastname      testrobot
     Input Password      123456
     Create Account
     Close QR code

 Add item into cart
    Go to Exclusive Item
    Select 1st Item
    Select 1st Item Option
    Add 1st Item to Bag
    Close Mini Cart
    Go to New Arrivals
    Select New Arrivals
    Select 2nd Item
    Add 2nd Item to Bag

Shopping cart
    Go to Cart
    Adjust Quantity
    Adjust Size
    Delete Item in Cart

Campaign
    Enter Coupon    9NEWTH
    Click Apply

Checkout
    Proceed to Checkout


