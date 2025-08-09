*** Settings ***
Library            SeleniumLibrary


*** Variables ***
${URL}            https://the-internet.herokuapp.com/
${checkbox}       //a[@href='/checkboxes']


*** Keywords ***
validate application URL
    Open Browser                  ${URL}    chrome
    Maximize Browser Window
    #Element Should Be Visible    Welcome to the-internet
    Page Should Contain           Welcome to the-internet
    Sleep                         2s
    

    