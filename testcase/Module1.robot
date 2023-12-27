*** Settings ***
Resource    ../page/Main.robot
Library    RPA.Browser.Selenium

*** Variables ***
${calendar}      type:calendar
${noti}          type:text name:Notifycation
${AddBtn}        id:AddNewNoti
${DelAllBtn}     id:DelAllBtn
${NextBtn}       type:button name:Next
${ConfirmBtn}    type:button name:Confirm
${UpdateBtn}     type:button name:Update
${Delete}    
${dataItem}      type:dataitem name:System.Data.Entity.DynamicProxies.Notifycation_BD3D61E458746E7B81456E1139E975C9A526388FD7F3DD9D579AE76F0433AF9E
${open}          type:text name:Open

*** Test Cases ***
[Module1 -] Test "Home" page
    Open Application
    Login function
    Click    ${HomeNav}
    Sleep    ${delay}
    Check Element    ${noti}
    Check Element    ${AddBtn}
    Check Element    ${DelAllBtn}
[Module1 -2] Test "Add notification" button
    Click    ${AddBtn}
    Click    ${NextBtn}
    Click    ${ConfirmBtn}
[Module1 -3] Test "Delete notification" button
    Open Application
    Login function
    Click    ${HomeNav}
    Click    ${AddBtn}
    Click    ${Delete}
[Module1 -4] Test "Update notification" button   
    Click    ${HomeNav}
    Right Click    ${dataItem}
    Click    ${open}
    Click    ${UpdateBtn}
    Send Keys  desktop   {TAB}
    Send Keys  desktop   {TAB}
    Send Keys  desktop   {TAB}
    Send Keys  desktop   {ENTER}
    ${Msg} =  RPA.Windows.Get Text   ${popup}
    Should Be Equal As Strings    ${Msg}    Update Notifycation Successfully
    Close Application