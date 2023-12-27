*** Settings ***
Resource    ../page/Main.robot

*** Variables ***
${dataItem}      type:datitem name:System.Data.Entity.DynamicProxies.User_A4541C7E1A71CB305157F7B78F03B185E950C9868E838D55ED6863B424BB5553
${ConfirmBtn}         type:button name:Confirm
${SearchText}         id:SearchTxt
${Delete}
${UpdateBtn}

${SearchBar}        id:SearchBar
${AddSubBtn}        id:AddBtn
${SubjList}         id:ListVw
${ConfirmBtn}       type:button name:Confirm
*** Test Cases ***
[Module4 -] Test "Subject" page
    Open Application
    Login function
    Click    ${SubjNav}
    Check Element    ${SearchBar}
    Check Element    ${AddSubBtn}
    Check Element    ${SubjList}
[Module4 -2] Test "Add new subject" button
    Click    ${AddSubBtn}
    Click    ${ConfirmBtn}
[Module4 -3] Test "Delete subject" button
    Open Application
    Login function
    Click    ${SubjNav}
    Click    ${Delete}
[Module4 -4] Test "Update subject" button
    Click    ${SubjNav}
    Click    ${UpdateBtn}