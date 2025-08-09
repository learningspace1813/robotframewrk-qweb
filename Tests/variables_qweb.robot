*** Settings ***
Library    QWeb

*** Variables ***
${URL}            https://the-internet.herokuapp.com/
${checkbox}       //a[@href='/checkboxes']

*** Test Cases ***
validate application URL-QWeb
    QWeb.Open Browser                  ${URL}    chrome
    QWeb.MaximizeWindow
    #Element Should Be Visible    Welcome to the-internet
#    QWeb.wait for Text           Welcome to the-internet
    QWeb.verify text                   Welcome to the-internet
    Sleep                         2s