*** Settings ***

*** Variables ***
${url}                 https://automationplayground.com/crm/
${radioMail}           //input[@type='radio' and @value='Male']
${radioFemail}         //input[@type='radio' and @value='Female']
${radioGender}         (//input[@type="radio"])[1]
${checkbox}            //input[@type="checkbox"]
${submit}              //button[@type="submit"]
${cancel}              //a[@text="Cancel"]



*** Keywords ***
Verify automationPlayground home page
    openBrowser    ${url}        chrome
    VerifyText    Customers Are Priority One!
    verifyText    Welcome to the customer relationship manager site!
    VerifyText    Service with a smile.

user authentication
    clickText    Sign In
    Typetext     Enter email      user@gmail.com
    TypeText     Password         Pass@123
    ClickText    Submit

adding new customer
    clickText    New Customer

    TypeText     Enter email             user@gmail.com
    TypeText     Enter first name        romeo
    TypeText     Enter last name         roalmes
    TypeText     Enter city              Pune
    DropDown     State                   Indiana
*** Test Cases ***
