*** Settings ***
Library         QWeb
Library         RequestsLibrary
#Suite Setup     Open Browser To Login Page
#Suite Teardown  Close Browser
#Test Setup      Go To Login Page

*** Variables ***
${BASE_URL}    https://m.media-amazon.com
#${URL}        https://www.saucedemo.com/
#${amazonURL}    https://m.media-amazon.com/
${USER_AGENT}  Mozilla/5.0 (Windows NT 10.0; Win64; x64)
${HEADERS}     {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"}
#${CHROME_OPTIONS}    --disable-blink-features=AutomationControlled --disable-infobars --disable-notifications --disable-password-manager-reauthentication --disable-save-password-bubble
${CHROME_OPTIONS}    --disable-infobars --disable-notifications --disable-extensions --disable-popup-blocking --disable-save-password-bubble --disable-password-manager-reauthentication
${BROWSER}    chrome
${USERNAME}   standard_user
${PASSWORD}   secret_sauce
${menu}       //div[@class='bm-burger-button']

*** Keywords ***
Open Browser To Login Page
    OpenBrowser    ${URL}    ${BROWSER}    ${CHROME_OPTIONS}
#    OpenBrowser    ${URL}    chrome    --incognito
    QWeb.MaximizeWindow

*** Test Cases ***
#Smoke Test - Login Functionality
#    [Tags]    smoke
#    TypeText     username     ${USERNAME}
#    TypeText     password     ${PASSWORD}
##    ClickText    login-button
#    ClickText    Login
#    VerifyText   Swag Labs
#
#
#Smoke Test - Navigate to Profile Page
#    [Tags]    smoke
#    ExecuteJavascript    window.alert = function() {};
#    ExecuteJavascript    window.confirm = function() { return true; };
#
#    ExecuteJavascript    document.evaluate("${menu}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()
##    ClickText     ${menu}
#
#    ClickText     About
#    VerifyText    Build apps users love with AI-driven insights
#    CloseBrowser


#test microservices
#Verify Order Microservices Works
#    Create Session    domain    ${amazonURL}
#    &{params}=    Create Dictionary    wppaszoneid    -ad-sidebar.
#    ${resp}=    GET    domain    /images/G/01/csm/showads.v2.js    params=${params}
#
##    ${response}=    GET    domain    /images/G/01/csm/showads.v2.js?wppaszoneid=-ad-sidebar.
#    Status Should Be    200
#    Should Contain    ${response.text}    window.ue_adb_chk = 1;

#    ClickText    View Orders
#    ${response}=    GET    order    /api/2017/suggestions
#    Should Contain    ${response.text}    shipped

#Verify Order Microservices Works
#    Create Session    domain    ${amazonURL}
#    &{params}=    Create Dictionary    wppaszoneid    -ad-sidebar.
#    ${resp}=    GET    domain    /images/G/01/csm/showads.v2.js    params=${params}
#
#    Status Should Be    200    ${resp}
#    Should Contain    ${resp.text}    window.ue_adb_chk = 1;

#Verify ShowAds Script Loads
#    [Documentation]    Ensure the ShowAds JS is reachable and contains the expected snippet.
#    # 1. Create a session pointing at m.media-amazon.com with a browser-like header
#    Create Session    media    ${BASE_URL}    headers=${HEADERS}
#
#    # 2. Define the query parameter for wppaszoneid
#    &{params}=    Create Dictionary    wppaszoneid    -ad-sidebar.
#
#    # 3. Issue the GET request to the script endpoint
#    ${resp}=    GET    media    /images/G/01/csm/showads.v2.js    params=${params}
#
#    # 4. Verify we got HTTP 200 OK
#    Status Should Be    200    ${resp}
#
#    # 5. Check that the JS payload contains the expected “adb check” snippet
#    Should Contain      ${resp.text}    window.ue_adb_chk = 01;


Verify ShowAds Script Loads
    [Documentation]    Ensure the ShowAds JS is reachable and contains the expected snippet.

    # 1. Create session with User-Agent header
    &{headers}=    Create Dictionary    User-Agent=${USER_AGENT}
    Create Session    media    ${BASE_URL}    headers=${headers}

    # 2. Create query parameters
    &{params}=    Create Dictionary    wppaszoneid=-ad-sidebar.

    # 3. Perform GET request with params (note: NO named param for `params=` here)
#    ${resp}=    Get Request    media    /images/G/01/csm/showads.v2.js    params=${params}
    ${resp}=    GET On Session    media    /images/G/01/csm/showads.v2.js    params=${params}
    # 4. Validate status code
    Status Should Be    200    ${resp}

    # 5. Validate content
    Should Contain    ${resp.text}    window.ue_adb_chk = 1;