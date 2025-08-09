*** Settings ***
Library        QWeb

*** Variables ***
${GuruSiteURL}           https://demo.guru99.com/
${GuruhomepageText}      //td[@colspan='2']//h2
${SeleniumDrpdwn}        (//a[@data-toggle='dropdown'])[1]
${DropdownMenu}          (//ul[@class='dropdown-menu'])[1]
${Radio&CheckBox}        (//ul[@class='dropdown-menu']//li)[2]
${RadioButtonOpt1}       //input[@value='Option 1']
${RadioButtonOpt2}       //input[@value='Option 2']
${RadioButtonOpt3}       //input[@value='Option 3']
${CheckBox1}             //input[@value='checkbox1']
${CheckBox2}             //input[@value='checkbox2']
${CheckBox3}             //input[@value='checkbox3']

*** Keywords ***
required_keyword
    ${GuruSiteURL}           https://demo.guru99.com/
    ${GuruhomepageText}      //td[@colspan='2']//h2
    ${SeleniumDrpdwn}        (//a[@data-toggle='dropdown'])[1]
    ${DropdownMenu}          (//ul[@class='dropdown-menu'])[1]
#...
    ${Radio&CheckBoxLink}    (//ul[@class='dropdown-menu']//li)[2]
    ${RadioButtonOpt1}       //input[@value='Option 1']
    ${RadioButtonOpt2}       //input[@value='Option 2']
    ${RadioButtonOpt3}       //input[@value='Option 3']
    ${CheckBox1}             //input[@value='checkbox1']
    ${CheckBox2}             //input[@value='checkbox2']
    ${CheckBox3}             //input[@value='checkbox3']
#...
    ${accessingLinksopt}     (//ul[@class='dropdown-menu']//li)[4]
    ${verifyPageAL}          //a[text()='click here']
    
#...
    ${ajaxDemoDDopt}         (//ul[@class='dropdown-menu']//li)[5]
    ${ajaxRadioB1}           //input[@id='yes']
    ${ajaxRadioB1}           //input[@id='no']
    ${resetAjax}             //input[@type='reset']
    ${checkAjax}             //input[@value='Check']


${for Google Home title}     //div//*[@class='lnXdpd']
${for Google Home title}     (//input[@value='Google Search'])[2]

${insideOutsideBlockTag}    (//ul[@class='dropdown-menu']//li)[6]
${insideBlockTag}           //a[text()=' Inside a block-level tag. ']
${outsideBlockTag}          //span[text()='Outside a block-level tag.']

${deleteCustFom}            (//ul[@class='dropdown-menu']//li)[7]
${custIDinput}              cusid
${submitForm}               //input[@type='submit']
${resetForm}                //input[@type='reset']

${Yahoo}                    (//ul[@class='dropdown-menu']//li)[8]
${yahooPageHeadline}        //strong

${toolTip}                  (//ul[@class='dropdown-menu']//li)[9]
${mouseHovertoolTip}        //a[text()='Download now']

${fileUploadOpt}               (//ul[@class='dropdown-menu']//li)[10]
${uploadFile}               //input[@id='uploadfile_0']
${acceptTerms}              //input[@type='checkbox']
${submitFile}               //button[@id='submitbutton']


${login}                    (//ul[@class='dropdown-menu']//li)[11]
${username}                 //input[@id='email']
${password}                 //input[@id='passwd']
${signIn}                   //button[@id='SubmitLogin']

${socialIcon}               (//ul[@class='dropdown-menu']//li)[12]
${mail}                     (//a[@Title='Mail'])[2]
${google}                   (//a[@title='Google+'])[2]
${youtube}                  (//a[@Title='YouTube'])[2]
${github}                   (//a[@Title='Github'])[2]
${facebook}                 (//a[@Title='Facebook'])[2]
${rss}                      (//a[@Title='Rss'])[2]
${email}                    //input[@name='email']
${Rsubmit}                  //input[@name='submit']
${returnBack}               //a[text()='Return to the last page']

${seleniumAutoIT}           (//ul[@class='dropdown-menu']//li)[13]
${ArtName}                   (//input[@id="input_3"])[1]
${ArtEmail}                  //input[@name="q4_email"]
${resumeUpload}             //input[@class="fileupload-input"]
${interestedArticle}        //textarea[@name="q6_typeA6"]
${ArtSubmit}                 //button[contains(@class,"jf-form-buttons")]
${prev}                     //a[@rel="prev"]
${next}                     //a[@rel="next"]
${createArticle}            //span[@id='postjob']
${createCourse}             //span[@id='getjob']
${crsName}                  //input[@id="input_3"]
${crsEmail/phone}           //input[@id="input_4"]
${crsLikeToCreate}          //input[@id="input_5"]
${crsCourseContent}         //textarea[@name="q6_clickTo6"]
${crsTextCkbox}             //input[@value="Text"]
${crsVideoCkbox}            //input[@value="Video"]
${crsInteractiveCkbox}      //input[@value="Interactive"]
${crsOtherCkbox}            //input[@value="other"]
${crsOtherInputCkbox}       //input[@id="input_7"]
${crsFileUpload}            //input[@name="q8_clickTo8"]
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
${dragPrd5k1}               (//a[contains(@class,'button-orange')])[2]
${dragPrd5k2}               (//a[contains(@class,'button-orange')])[4]
${dragPrdTDebitAcc}         (//a[contains(@class,'button-orange')])[6]
${dragPrdTCreditAcc}        (//a[contains(@class,'button-orange')])[7]
${debitSideAccPlc}          (//li[@class='placeholder'])[1]
${debitSideAmtPlc}          (//li[@class='placeholder'])[2]
${creditSideAccPlc}         (//li[@class='placeholder'])[3]
${creditSideAmtPlc}         (//li[@class='placeholder'])[4]

${datePicker}               (//ul[@class='dropdown-menu']//li)[20]
${dateTimeLocker}           //input[@type='datetime-local']
${dateTimeSubmit}           //input[@type='submit']



*** Test Cases ***
