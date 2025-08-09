*** Settings ***
Library        SeleniumLibrary


*** Variables ***
${url}         https://automationplayground.com/crm/


*** Test Cases ***
Verify automationPlayground home page
    VerifyText    Customers Are Priority One!
    verifyText    Welcome to the customer relationship manager site!
    VerifyText

*** Keywords ***
