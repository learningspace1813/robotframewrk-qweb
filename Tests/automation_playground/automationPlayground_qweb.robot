*** Settings ***
Library         QWeb
#Resource        aPlayground_resource.robot


*** Variables ***
${url}                 https://automationplayground.com/crm/
${radioMail}           //input[@type='radio' and @value='Male']
${radioFemail}         //input[@type='radio' and @value='Female']
${radioGender}         (//input[@type="radio"])[1]
${checkbox}            //input[@type="checkbox"]
${submit}              //button[@type="submit"]
${cancel}              //a[@text="Cancel"]

${verifyHomepage}      //h2[text()="Customers Are Priority One!"]
${signIn}              //a[text()="Sign In"]
${email}               //input[@placeholder="Enter email"]
${Password}            //input[@placeholder="Password"]
${submit}              //input[@placeholder="Submit"]

${newCustomer}         //a[@id="new-customer"]
${tableCustomers}      //table[@id="customers"]
${addCustomer}         //h2[text()="Add Customer"]

${enterMail}           //input[@placeholder="Enter email"]
${enterFName}          //input[@placeholder="Enter first name"]
${enterLName}          //input[@placeholder="Enter last name"]
${enterCity}           //input[@placeholder="Enter city"]
${successPopup}        //div[@id="Success"]
#${enterState}          //input[@placeholder="State"]

#*** Test Cases ***
#testing of automationPlayground
#    Verify automationPlayground home page
#    user authentication
#    adding new customer
#    Confirm/Verify added customer successfully
#
#*** Keywords ***
*** Test Cases ***
Verify automationPlayground home page
    openBrowser    ${url}               chrome
    VerifyText     Customers Are Priority One!
#    verifyText    Welcome to the customer relationship manager site!
#    VerifyText    Service with a smile.

user authentication
    click Text      ${signIn}
    Type text       ${email}             user@gmail.com
    Type Text       ${Password}          Pass@123
    Click Text      ${submit}

adding new customer
    #Verify Table    ${tableCustomers}    row=4    column=2    expected=John
    Click Text      ${newCustomer}

    Verify Text     ${addCustomer}
    Type Text       ${enterMail}         mail@gmail.com
    Type Text       ${enterFName}        mail
    Type Text       ${enterLName}        sent
    Type Text       ${enterCity}         Google
    DropDown        State                Indiana
    
    #RadioButton      Male
    Click Element      ${radioGender}
    Click Checkbox     Add to promotional list       on
    VerifyCheckbox     Add to promotional list       on
#    VerifyCheckboxStatus    Add to promotional list      enabled
    Click Element      ${submit}

    #QWebElementNotFoundErr
    #    CheckBox element not found

    #Is Icon            
Confirm/Verify added customer successfully
    ${verify1}          Verify Text        ${successPopup}
    IF    $verify1
        Log To Console    Success! New customer added!
    ELSE
        Log To Console    ValueError : The checkbox value is not the same    [WARN]
    END
#    ClickText
#    ClickText