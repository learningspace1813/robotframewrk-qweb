*** Settings ***
Library        QWeb
Library        BuiltIn
#Resource       guruPageResource.robot
#Test Setup     Testing_GURU99_app_URL_validation
#Test Teardown    Close Browser

*** Variables ***
${GuruSiteURL}           https://demo.guru99.com/
${GuruhomepageText}      //td[@colspan='2']//h2
${VerifyHomepageText}    Enter your email address to getaccess details to demo site
${SeleniumDrpdwn}        (//a[@data-toggle='dropdown'])[1]
${DropdownMenu}          (//ul[@class='dropdown-menu'])[1]
#...
${Radio&CheckBoxLink}    (//ul[@class='dropdown-menu']//li)[2]
${UITestR-C}             //strong[text()='Radio']
${RadioButtonOpt1}       //input[@value='Option 1']
${RadioButtonOpt2}       //input[@value='Option 2']
${RadioButtonOpt3}       //input[@value='Option 3']
${CheckBox1}             //input[@value='checkbox1']
${CheckBox2}             //input[@value='checkbox2']
${CheckBox3}             //input[@value='checkbox3']
#...
${accessingLinksopt}     (//ul[@class='dropdown-menu']//li)[4]
${verifyPageAL}          (//a[text()='click here'])[1]
${accessLink1}           (//a[text()='click here'])[1]
${accessLink2}           (//a[text()='click here'])[2]
#...
${ajaxDemoDDopt}         (//ul[@class='dropdown-menu']//li)[5]
${ajaxRadioB1}           //input[@id='yes']
${ajaxRadioB1}           //input[@id='no']
${resetAjax}             //input[@type='reset']
${checkAjax}             //input[@value='Check']
${forGoogleHomeTitle}     //div//*[@class='lnXdpd']
${forGoogleHometitle}     (//input[@value='Google Search'])[2]
#...
${insideOutsideBlockTag}    (//ul[@class='dropdown-menu']//li)[6]
${insideBlockTag}           //a[text()=' Inside a block-level tag. ']
${outsideBlockTag}          //span[text()='Outside a block-level tag.']
#...
${deleteCustFom}            (//ul[@class='dropdown-menu']//li)[7]
${custIDinput}              cusid
${submitForm}               //input[@type='submit']
${resetForm}                //input[@type='reset']
#...
${Yahoo}                    (//ul[@class='dropdown-menu']//li)[8]
${yahooPageHeadline}        //strong
${yahooMainText}            This is DEMO site for TESTING purpose
#...
${toolTip}                  (//ul[@class='dropdown-menu']//li)[9]
${mouseHovertoolTip}        //a[text()='Download now']
#...
${fileUploadOpt}            (//ul[@class='dropdown-menu']//li)[10]
${uploadFile}               //input[@id='uploadfile_0']
${acceptTerms}              //input[@type='checkbox']
${submitFile}               //button[@id='submitbutton']
#...
${login}                    (//ul[@class='dropdown-menu']//li)[11]
${username}                 //input[@id='email']
${password}                 //input[@id='passwd']
${signIn}                   //button[@id='SubmitLogin']
#...
${socialIcon}               (//ul[@class='dropdown-menu']//li)[12]
${mail}                     (//a[@Title='Mail'])[2]
${google}                   (//a[@title='Google+'])[2]
${youtube}                  (//a[@Title='YouTube'])[2]
${github}                   (//a[@Title='Github'])[2]
${facebook}                 (//a[@Title='Facebook'])[2]
${rss}                      (//a[@Title='Rss'])[2]
${email}                    //input[@name='email']
${Rsubmit}                   //input[@name='submit']
#...
${seleniumAutoIT}           (//ul[@class='dropdown-menu']//li)[13]
${TTname}                   (//input[@id="input_3"])[1]
${TTemail}                  //input[@name="q4_email"]
${resumeUpload}             //input[@class="fileupload-input"]
${interestedArticle}        //textarea[@name="q6_typeA6"]
${TTsubmit}                 //button[contains(@class,"jf-form-buttons")]
${prev}                     //a[@rel="prev"]
${next}                     //a[@rel="next"]
${createArticle}            //span[@id='postjob']
${createCourse}             //span[@id='getjob']
${crsName}                  //input[@id="input_3"]
${crsEmail/phone}           //input[@id="input_4"]
${crsLikeToCreate}          //input[@id="input_5"]
${crsCourseContent}         //span[@class="form-sub-label-container"]
${crsTextCkbox}             //input[@value="Text"]
${crsVideoCkbox}            //input[@value="Video"]
${crsInteractiveCkbox}      //input[@value="Interactive"]
${crsOtherCkbox}            //input[@value="other"]
${crsOtherInputCkbox}       //input[@id="input_7"]
${crsFileUpload}            //input[@id="input_8"]
${crsSubmit}                (//button[@type="submit"])[1]
${goBackToForm}             //span[@class="back-to-form-button"]
${crsResumePath}            C:\Users\learn\Downloads\Resume.docx

${SeleniumIDEtest}          (//ul[@class='dropdown-menu']//li)[14]
${IDEtestMailOrPhone}       //input[@name="email"]
${IDEtestPass}              //input[@name="pass"]
${IDEtestKeepSignIn}        //label[text()="Keep me logged in"]
${IDEtestLogIn}             //input[@value="Log In"]

${GuruDemoPage}             (//ul[@class='dropdown-menu']//li)[15]

${scrollbarDemo}            (//ul[@class='dropdown-menu']//li)[16]

${FileUploadSikuli}         (//ul[@class='dropdown-menu']//li)[17]
${SikuliFileUpload}         //input[@id="photoimg"]

${cookieHandling}           (//ul[@class='dropdown-menu']//li)[18]
${cukiUsername}             //input[@placeholder="Username"]
${cukiPassword}             //input[@name="password"]
${cukiSubmit}                //button[@type="submit"]


${drag&drop}                (//ul[@class='dropdown-menu']//li)[19]
${dragPrd5k1}               (//li[@class="block13 ui-draggable"])[1]    #(//a[contains(@class,'button-orange')])[2]
${dragPrd5k2}               (//a[contains(@class,'button-orange')])[4]
${dragPrdTDebitAcc}         (//a[contains(@class,'button-orange')])[6]
${dragPrdTCreditAcc}        (//a[contains(@class,'button-orange')])[7]
${debitSideAccPlc}          (//td//div[@class="shoppingCart"])[1]    #(//li[@class='placeholder'])[1]
${debitSideAmtPlc}          (//li[@class='placeholder'])[2]
${creditSideAccPlc}         (//li[@class='placeholder'])[3]
${creditSideAmtPlc}         (//li[@class='placeholder'])[4]

${datePicker}               (//ul[@class='dropdown-menu']//li)[20]
${dateTimeLocker}           //input[@type='datetime-local']
${dateTimeSubmit}           //input[@type='submit']
${input_locator}            css=input.datepicker-input

${productToDrag}      css=div.card[data-id="prod-5k1"]
${dropArea}           css=li.placeholder[data-zone="debit-account"]


*** Test Cases ***
Testing_GURU99_app_URL_validation
    OpenBrowser             ${GuruSiteURL}            chrome
    #...    options=--disable-save-password-bubble --disable-notifications --disable-infobars
    ...    options=--incognito
    ${homepageText}         GetText                   ${GuruhomepageText}
    Log To Console          text: "${homepageText}"
    #VerifyText              ${homepageText}           Enter your email address to getaccess details to demo site

#Testing_GURU99_app_Flash_Movie_Demo


Testing_GURU99_app_radio&checkbox_ButtonLink
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${Radio&CheckBoxLink}
    ${UItext}               GetText                   ${UITestR-C}
    Log To Console          ...
    Log To Console          verified text:${UItext}
    Should Be Equal         ${UItext}    Radio        Custom error    values=True
    #VerifyText              ${UItext}                 Radio

Testing_GURU99_app_checkboxes_radioButtons
    ClickElement            ${RadioButtonOpt1}
    ClickElement            ${RadioButtonOpt2}
    ClickElement            ${RadioButtonOpt3}
    Log To Console          All radiobuttons are clicked and tested one byone!

Testing_GURU99_app_checkboxes
    Log To Console          ...
    ClickCheckbox           Checkbox1                 on
    #ClickCheckbox           Checkbox1                 off
    VerifyCheckbox          Checkbox1                 Checkbox1
    Log To Console          Verified Checkbox
    Sleep                   2s

    ClickCheckbox           ${CheckBox2}                 on
    #ClickCheckbox           ${CheckBox2}                 off
    VerifyCheckboxStatus    ${CheckBox2}                 enabled
    Log To Console          Verified Checkbox status
    Sleep                   2s

    ClickCheckbox           ${CheckBox3}                 on
    Log To Console          Verified Checkbox value
    Sleep                   2s

#Testing_GURU99_app_table_Demo

Testing_GURU99_app_Accessing_Links
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${accessingLinksopt}
    #${accessLinkText}       Get Text                  ${accessLink1}
    #VerifyText              ${accessLinkText}         click here

    ClickText               ${accessLink1}
    ${accessLink1Text}      GetUrl
    VerifyUrl               https://www.google.com/
    ${URLhomeText1}         Get Text                   ${forGoogleHometitle}
    Log To Console          ${URLhomeText1}
    Sleep                   1s

    #SwitchWindow            1
    Back
    ClickText               ${accessLink2}
    ${accessLink2Text}      Get Title
    VerifyTitle             Facebook – log in or sign up
    VerifyText              Facebook helps you connect and share with the people in your life.
    #${URLhomeText2}         Get Text
    Sleep                   1s
    Back

Testing_GURU99_app_Ajax_Demo
    Sleep                   2s
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${ajaxDemoDDopt}
    ClickElement            ${ajaxRadioB1}
    ClickElement            ${resetAjax}
    ClickElement            ${ajaxRadioB1}
    ClickElement            ${checkAjax}

Testing_GURU99_app_Inside_outside_block_level_tag
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${insideOutsideBlockTag}

    ClickElement            ${insideBlockTag}
    ${accessLink1Text}      GetUrl
    VerifyUrl               https://www.google.com/
    ${URLhomeText1}         Get Text                   ${for Google Home title}
    Log To Console          ${URLhomeText1}
    Back

    ClickText               ${outsideBlockTag}
    ${accessLink2Text}      Get Title
    VerifyTitle             Facebook – log in or sign up
    #${URLhomeText2}         Get Text
    Sleep                   1s
    Back

Testing_GURU99_app_delete_customer_form
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${deleteCustFom}

    TypeText                ${custIDinput}              12345678
    ClickElement            ${resetForm}
    TypeText                ${custIDinput}              12345678
    ClickElement            ${submitForm}
    Sleep                   1s

    CloseAlert              Accept                          2s
    CloseAlert              Accept                          2s
    #PressKey                ${EMPTY}                        Enter
    #Sleep                   1s
    #PressKey                NONE                        Enter
    Back

Testing_GURU99_app_test_Yahoo_messenger
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${Yahoo}

    ${YahooPageText}        Get Text                    ${yahooPageHeadline}
    VerifyText              This is DEMO site for TESTING purpose
    Back

Testing_GURU99_app_toolTip_page_verify
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${toolTip}
    VerifyText              Using any HTML inside the tooltip
    #verifyText
    #mouse move              ${mouseHovertoolTip}
    #Sleep                   3s
    Back

Testing_GURU99_app_file_upload
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${fileUploadOpt}
    UploadFile              ${uploadFile}               C:/Users/learn/Downloads/1.jpg
    ClickCheckbox           I accept                    on
    ClickElement            ${submitFile}
    ${verifyText}           Get Text                    //h3//center
    #VerifyText              ${verifyText}
    Sleep                   2s
    Back

Testing_GURU99_app_login_credentials
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${login}

    TypeText                ${username}                 ivory@gmail.com
    TypeText                ${password}                 Pass@1234
    ClickElement            ${signIn}
    VerifyText              Successfully Logged in...

Testing_GURU99_app_Social_Icon
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${socialIcon}

    ClickElement            ${mail}
    verifyText              Join Guru99 NewsLetter
    TypeText                ${email}                    ivory@gmail.com
    ClickElement            ${Rsubmit}
    #VerifyText              You're subscribed!
    #ClickText               Return to the last page
    Back
    Back

    ClickElement            ${google}
    #verifyText              Simple & Easy Learning
    SwitchWindow            index=1

    ClickElement            ${youtube}
    #VerifyText              Guru99                    #channel
    SwitchWindow            index=1
    #Back

    ClickElement            ${github}
    #verifyText              Simple & Easy Learning
    Back

    ClickElement            ${facebook}
    #verifyText              See more from Guru99
    SwitchWindow            index=1
    #Back

    ClickElement            ${rss}
    #verifyText              See more from Guru99
    SwitchWindow            index=1

Testing_GURU99_app_selenium_auto_TT
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${seleniumAutoIT}

    ClickElement            ${createArticle}
    VerifyText              Write For Us
    TypeText                ${TTname}                    ivory
    TypeText                ${TTemail}                   ivory@gmail.com
    UploadFile              ${resumeUpload}              C:/Users/learn/Downloads/1.jpg
    TypeText                ${interestedArticle}         reading, interesting things, activeness, smart, improvements, and finally I am
    ClickText               ${TTsubmit}
    Sleep                   3s
    VerifyText              Thank You!

    #ClickElement            ${createCourse}
    #VerifyText              Become a Guru99 Instructor
    #TypeText                ${crsName}                   ivory
    #TypeText                ${crsEmail/phone}            ivory@gmail.com
    #TypeText                ${crsLikeToCreate}           Learning, extracurricular Activities
    #ScrollText              What will be the course content?
    #TypeText                ${crsCourseContent}          Learning, extracurricular Activities1
    #ClickCheckbox           Text                         on
    #ClickCheckbox           Video                        on
    #ClickCheckbox           Interactive                  on
    #ClickElement            ${crsOtherCkbox}
    #TypeText                ${crsOtherInputCkbox}        checkboxValue
    #ScrollText              Upload Your Resume
    #Sleep                   4s
    #Sleep                   2s
    #UploadFile              ${crsFileUpload}             Resume.docx
    #Sleep                   2s
    #ClickElement            ${crsSubmit}
    #ClickElement            ${goBackToForm}
    ClickElement            ${prev}
    Back
    ClickElement            ${next}
    Back

Testing_GURU99_app_selenium_ID_Test
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${SeleniumIDEtest}
    VerifyText              This is DEMO site for TESTING purpose
    TypeText                ${IDEtestMailOrPhone}         07237937
    TypeText                ${IDEtestPass}                Pass@123
    ClickCheckbox           Keep me logged in             on
    ClickElement            ${IDEtestLogIn}
    Back

Testing_GURU99_app_Guru_Demo_Page
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${GuruDemoPage}
    VerifyText              THIS IS A DEMO PAGE FOR TESTING

Testing_GURU99_app_Scroll_Bar_Demo
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${scrollbarDemo}
    Back

Testing_GURU99_app_File_uploadSikui
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${FileUploadSikuli}
    uploadFile              ${SikuliFileUpload}            C:/Users/learn/Downloads/1.jpg
    VerifyText              File Upload Successful

Testing_GURU99_app_cookie_handling
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${cookieHandling}
    VerifyText              Please login
    TypeText                ${cukiUsername}                ivory
    TypeText                ${cukiPassword}                Ivory@123
    ClickElement            ${cukiSubmit}
    RefreshPage
    VerifyText              You are logged In
    VerifyText              Cookie Data

Testing_GURU99_app_Drag&Drop
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${drag&drop}
    #${source1}              GetWebElement                 ${dragPrdTDebitAcc}
    #${target1}              GetWebElement                 ${debitSideAccPlc}
    #DragDrop                ${source1}           ${target1}

    #${source2}              GetWebElement                 ${dragPrd5k1}
    #${target2}              GetWebElement                 ${debitSideAmtPlc}
    #DragDrop                ${source2}                 ${target2}

    #${source3}              GetWebElement                 ${dragPrdTCreditAcc}
    #${target3}              GetWebElement                 ${creditSideAccPlc}
    #DragDrop                ${source3}                 ${target3}

    #${source4}              GetWebElement                 ${dragPrd5k2}
    #${target4}              GetWebElement                 ${creditSideAmtPlc}
    #DragDrop                ${source4}                 ${target4}

   #                            OR
     #DragDrop    ${dragPrdTDebitAcc}    ${debitSideAccPlc}
    #DragDrop        Account            BANK
    #DragDrop        Account            SALES
    #DragDrop        Amount            5000
    #DragDrop        Amount            5000


Testing_GURU99_app_datepicker
    ClickElement            ${SeleniumDrpdwn}
    ClickElement            ${datePicker}
    Typetext                ${dateTimeLocker}             08/13/2025 #10:30 AM
    Typetext                ${dateTimeLocker}             \\9
    Typetext                ${dateTimeLocker}             10:30 AM
    ClickElement            ${dateTimeSubmit}
    VerifyText              Your Birth Date is 2025-08-10
    CloseBrowser


