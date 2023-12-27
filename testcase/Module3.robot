*** Settings ***
Resource    ../page/Main.robot

*** Variables ***
${dataItem}      type:datitem name:System.Data.Entity.DynamicProxies.User_A4541C7E1A71CB305157F7B78F03B185E950C9868E838D55ED6863B424BB5553

${SearchTopnav}       id:SearchBtn
${AddTeachBtn}        id:TeachAddBtn
${TeachList}          id:PART_GridViewHeaderRowPresenter
${ConfirmBtn}         type:button name:Confirm
${SearchText}         id:SearchTxt
${Delete}
${UpdateBtn}

*** Test Cases ***
[Module3 -] Test "Teacher" page
    Open Application
    Login function
    Click    ${TeachNav}
    Check Element    ${AddTeachBtn}
    Check Element    ${TeachList}
    Click    ${SearchTopnav}
    Sleep    ${delay}
    ${Msg} =  Get Element   ${SearchText}
    ${Msg}    Convert To String    ${Msg}
    Should Contain    ${Msg}    Searching for
[Module3 -2] Test "Add new teacher" button
    Click    ${TeachNav}
    Click    ${AddTeachBtn}
    Click    ${ConfirmBtn}
    Click    ${OKBtn}
[Module3 -3] Test "Delete teacher" button
    Click    ${TeachNav}
    Click    ${Delete}
[Module3 -4] Test "Update teacher" button
    Click    ${TeachNav}
    Click    ${UpdateBtn}