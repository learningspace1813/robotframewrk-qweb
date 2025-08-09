*** Settings ***
Library    QWeb
Resource    variables.robot

*** Test Cases ***
validate application URL
    
    
validate checkbox
    validate application URL-QWeb
    Click Text    ${checkbox}
