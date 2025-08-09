*** Settings ***
Library           SeleniumLibrary
Resource          variables.robot
Library           String
#Library
#Suite Setup
#Suite Teardown


*** Keywords ***


*** Test Cases ***
#validate application URL
#    Open Browser                  ${URL}    chrome
#    Maximize Browser Window
#    #Element Should Be Visible    Welcome to the-internet
#    Page Should Contain           Welcome to the-internet
#    Sleep                         2s

validate checkboxes
    validate application URL
    SeleniumLibrary.Click Element                 ${checkbox}
    SeleniumLibrary.Go Back
    Sleep    2s

validate A/B testing
    Click Element        ${abtest}
    ${sbtestDescript}    Get Text    ${descriptValuePath}
    ${descriptValue}    Run Keyword And Return Status    ${sbtestDescript}    A/B Test variation
    Regexp Escape    ${sbtestDescript}    A/B Test variation
    IF    ${descriptValue}
        Log To Console    a/b testing is successful.
    ELSE
        Log To Console    retest it
    END
    

*** Variables ***
${abtest}    //a[@href='/abtest']
${descriptValuePath}    //h3[text()='A/B Test Variation 1']
