*** Settings ***
Resource    ../page/Main.robot

*** Variables ***
${dataItem}           type:datitem name:System.Data.Entity.DynamicProxies.User_A4541C7E1A71CB305157F7B78F03B185E950C9868E838D55ED6863B424BB5553
${ConfirmBtn}         type:button name:Confirm
${SearchText}         id:SearchTxt
${Delete}
${UpdateBtn}

${ListingTopNav}     id:ListTopNav
${RegisterTopNav}    id:RegisterTopNav
${RegisterTxt}       id:RegisterTxt
${SearchTopNav}      id:SearchTopNav
${AddSubjBtn}        id:AddBtn
*** Test Cases ***
[Module5 -] Test "Classes" page
    Open Application
    Login function
    Click    ${ClassNav}
    Check Element    ${ListingTopNav}
    Check Element    ${RegisterTopNav}
    Check Element    ${SearchTopNav}
    Check Element    ${AddSubjBtn}
[Module5 -2] Test "Add new Classes" button
    Click    ${AddSubjBtn}
    Click    ${ConfirmBtn}
    Click    ${OKBtn}
[Module5 -3] Test "Delete Classes" button
    Click    ${ClassNav}
    Click    ${Delete}
[Module5 -4] Test "Register Classes" button
    Click    ${ClassNav}
    Click    ${RegisterTopNav}
    Sleep    ${delay}
    ${Msg} =  Get Element   ${RegisterTxt}
    ${Msg}    Convert To String    ${Msg}
    Should Contain    ${Msg}    Class Register
[Module5 -4] Test "Search Classes" button
    Click    ${SearchTopNav}
    Sleep    ${delay}
    ${Msg} =  Get Element   ${SearchText}
    ${Msg}    Convert To String    ${Msg}
    Should Contain    ${Msg}    Searching for