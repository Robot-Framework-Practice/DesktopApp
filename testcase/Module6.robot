*** Settings ***
Resource    ../page/Main.robot

*** Variables ***
${Grid1}             id:TxtB1
${Grid2}             id:TxtB2
${Grid3}             id:TxtB3
${OldPassEdt}        id:Edt1
${NewPassEdt}        id:Edt2
${ConfirmPassEdt}    id:Edt3
${toggleBtn}         id:ToggleBtn
${changeBtn}         type:button name:Change

*** Test Cases ***
[Module6 -] Test "Setting" page
    Open Application
    Login function
    Click    ${SetNav}
    Check Element    ${toggleBtn}
    Check Element    ${changeBtn}
    ${Msg} =  Get Element   ${Grid1}
    ${Msg}    Convert To String    ${Msg}
    Should Contain    ${Msg}    Password
    ${Msg} =  Get Element   ${Grid2}
    ${Msg}    Convert To String    ${Msg}
    Should Contain    ${Msg}    New Password
    ${Msg} =  Get Element   ${Grid3}
    ${Msg}    Convert To String    ${Msg}
    Should Contain    ${Msg}    Confirm Password Again
[Module6 -2] Test "Change Password" page
    Click    ${OldPassEdt}
    Send Keys    ${OldPassEdt}    admin
    Click    ${NewPassEdt}
    Send Keys    ${NewPassEdt}    123456
    Click    ${ConfirmPassEdt}
    Send Keys    ${ConfirmPassEdt}    123456
    Click    ${toggleBtn}
    Click    ${changeBtn}
    ${Msg} =  Get Text   ${popup}
    Should Be Equal As Strings    ${Msg}    Đổi PassWord Thành Công
    Click    ${OKBtn}