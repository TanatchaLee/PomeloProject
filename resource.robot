*** Settings ***
Library             Selenium2Library

*** Variables ***
${URL}      https://www.pomelofashion.com/th/en/
${BROWSER}  chrome

*** Keywords ***
Go to Register
    Maximize Browser Window
    Wait Until Element Is Visible  //*[@id="__next"]/header/div[4]/ul/li[1]/button
    Click Element   //*[@id="__next"]/header/div[4]/ul/li[1]/button


Input Email
    [Arguments]     ${USERNAME}
    Input text      //*[@id="modal"]/section/section/div/form/div[1]/div/div/input  ${USERNAME}

Input Firstname
    [Arguments]     ${FIRSTNAME}
    Input text      //*[@id="modal"]/section/section/div/form/div[2]/div/div/input  ${FIRSTNAME}

Input Lastname
    [Arguments]     ${LASTNAME}
    Input text      //*[@id="modal"]/section/section/div/form/div[3]/div/div/input  ${LASTNAME}

Input Password
    [Arguments]     ${PASSWORD}
    Input text      //*[@id="modal"]/section/section/div/form/div[4]/div[1]/div/input  ${PASSWORD}

Create Account
    Scroll Element Into View    //*[@id="modal"]/section/section/div/span[4]
    Click Element   //*[@id="modal"]/section/section/div/form/button
    Sleep   5s

Close QR code
    Wait Until Element Is Visible   //*[@id="modal"]/section/section/button
    Click Element  //*[@id="modal"]/section

Go to Exclusive Item
    Wait Until Element Is Visible   //*[@id="page-wrap"]/div[3]/div[2]/div/div/span
    Scroll Element Into View     //*[@id="page-wrap"]/div[3]/div[2]/div/div/span
    Click Element                //*[@id="page-wrap"]/div[3]/div[2]/div/div/span

Select 1st Item
    Wait Until Element Is Visible  //*[@id="page-wrap"]/div[4]/div[2]/div/div/div/div[1]
    Scroll Element Into View     //*[@id="page-wrap"]/div[4]/div[2]/div/div/div/div[1]
    Click Element                //*[@id="page-wrap"]/div[4]/div[2]/div/div/div/div[1]/div/a/figure/div[3]

Select 1st Item Option
    Wait Until Element Is Visible   //*[contains(text(),'S/M')]
    Click Element    //*[contains(text(),'S/M')]

Add 1st Item to Bag
    Click Element   //*[@id="page-wrap"]/div[2]/div[1]/div[2]/div[2]/div[3]/button[1]

Close Mini Cart
    Wait Until Element Is Visible   //*[@id="__next"]/header/div[4]/ul/div[3]/div[1]/span[1]
    Click Element   //*[@id="__next"]/header/div[4]/ul/div[3]/div[1]/span[1]

Go to New Arrivals
    Click Element   //*[@id="__next"]/header/div[2]/ul/li[1]/div/div/button/span

Select New Arrivals
    Wait Until Element Is Visible   //*[@id="modal"]/nav[1]/div/ul/li[1]/a/figure/figcaption
    Click Element  //*[@id="modal"]/nav[1]/div/ul/li[1]/a/figure/figcaption

Select 2nd Item
    Wait Until Element Is Visible   //*[@id="page-wrap"]/div[4]/div[2]/div/div/div/div[1]/div/div[1]/h2/a
    Scroll Element Into View    //*[@id="page-wrap"]/div[4]/div[2]/div/div/div/div[1]/div/div[1]/h2/a
    Mouse Over  //*[@id="page-wrap"]/div[4]/div[2]/div/div/div/div[1]/div/a/figure/div[3]/div/div[2]

Add 2nd Item to Bag
    Wait Until Element Is Visible  //*[@id="page-wrap"]/div[4]/div[2]/div/div/div/div[1]/div/a/figure/div[3]/div/div[2]/div/span[3]
    Click Element  //*[@id="page-wrap"]/div[4]/div[2]/div/div/div/div[1]/div/a/figure/div[3]/div/div[2]/div/span[3]

Go to Cart
     Wait Until Element Is Visible  //*[@id="__next"]/header/div[4]/ul/div[3]/div[3]/button
     Click Element  //*[@id="__next"]/header/div[4]/ul/div[3]/div[3]/button

Adjust Quantity
     Wait Until Element Is Visible  //*[@id="__next"]/div[4]/div/div[2]/div[2]/div/div[2]/div[2]/div[2]/div/div/div/select
     Click Element  //*[@id="__next"]/div[4]/div/div[2]/div[2]/div/div[2]/div[2]/div[2]/div/div/div/select
     Click Element  //option[contains(.,'2')]

Adjust Size
     Wait Until Element Is Visible  //*[@id="__next"]/div[4]/div/div[2]/div[2]/div/div[2]/div[2]/div[1]/div/div/select
     Click Element  //*[@id="__next"]/div[4]/div/div[2]/div[2]/div/div[2]/div[2]/div[1]/div/div/select
     Click Element  //option[contains(.,'M/L')]

Delete Item in Cart
    Wait Until Element Is Visible   //*[@id="__next"]/div[4]/div/div[2]/div[3]/div/div[1]/div
    Click Element   //*[@id="__next"]/div[4]/div/div[2]/div[3]/div/div[1]/div

Enter Coupon
    [Arguments]     ${COUPON}
    Wait Until Element Is Visible   //*[@id="__next"]/div[4]/div/div[2]/div[3]/div[2]/button
    Input text      css:input[placeholder="Enter Promo Code"]  ${COUPON}

Click Apply
     Click Element  //*[@id="__next"]/div[4]/div/div[2]/div[3]/div[2]/button

Proceed to Checkout
     Click Element  //*[@id="__next"]/div[4]/div/div[5]/button



