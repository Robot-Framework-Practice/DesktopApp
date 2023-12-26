*** Settings ***
Resource       ../page/Main.robot
Library        RPA.Browser.Selenium
Library        RPA.Email.ImapSmtp    smtp_server=smtp.gmail.com    smtp_port=587

*** Variables ***
${url}                https://mail.google.com/
${second}             0.5s
${username}           seipham0305@gmail.com
${password}           123456789@Vy
${OTPInput}           id:OTPTextBox
${EMAIL_XPATH}        //tbody/tr[1]/td[4]/div[2]/span[1]/span[contains(text(),"IT008.N11.PMCL")]
${EmailInp}           id:focusFirstTextBox
${ForgotPass}         id:ForgotPassword
${SendCode}           id:SendCodeBtn
${NewPass}            id:NewPassEdit
${ConfirmPass}        id:ConfirmPassEdit
${ConfirmBtn}         id:ConfirmBtn
${MsgId}              id:65535

*** Test Cases ***
[Module8-] Test "Login" feature
    Open Application
    Login function
    Close Application

[Module8-2] Test "Forgot password" feature
    Open Application
    Click    ${ForgotPass}
    Send Keys    ${EmailInp}    ${username}
    Click    ${SendCode}
    Sleep    ${delay}
    Click    ${OKBtn}
    Sleep    4s
    Click    ${OKBtn}

    Attach Chrome Browser    9222
    Go To    ${url}
    Set Selenium Speed        ${second}
    Input Text      //input[@id='identifierId']                    ${username}
    Press Keys      //input[@id='identifierId']                    RETURN
    Sleep           ${delay}
    Input Text      //input[@name='Passwd']                        ${password} 
    Press Keys      //input[@name='Passwd']                        RETURN
    # Tìm và click vào email tương ứng
    Sleep    8s
    Wait Until Page Contains Element    ${EMAIL_XPATH}
    Click Element    ${EMAIL_XPATH}
    Sleep    8s
    ${otp}    RPA.Browser.Selenium.Get Text    //div[@class='a3s aiL ']/div/div/h2
    Send Keys    ${OTPInput}    ${otp}
    Send Keys  desktop   {TAB}
    Click    ${NewPass}
    Send Keys    ${NewPass}    123456
    Click    ${ConfirmPass}
    Send Keys    ${ConfirmPass}    123456
    Send Keys  desktop   {TAB}
    Sleep    ${delay}
    Click    ${ConfirmBtn}
    Sleep    ${delay}
    ${Msg} =  RPA.Windows.Get Text   ${MsgId}
    Should Be Equal As Strings    ${Msg}    Cập nhật mật khẩu thành công