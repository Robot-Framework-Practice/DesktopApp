*** Settings ***
Resource    ../page/Main.robot

*** Variables ***
${AddTeachBtn}     id:AddStuBtn
${DelAllBtn}     id:DelAllBtn
${CountryEdt}    id:CountryName
${FatherName}    id:FatherName
${dataItem}      type:datitem name:System.Data.Entity.DynamicProxies.User_A4541C7E1A71CB305157F7B78F03B185E950C9868E838D55ED6863B424BB5553
${Delete}

*** Test Cases ***
[Module3 -] Test "Teacher" page
    Open Application
    Login function
    Click    ${TeachNav}
    Check Element    ${AddTeachBtn}
    Check Element    ${DelAllBtn}
    Sleep    ${delay}

[Module3 -2] Test "Add new teacher" page
    Click    ${AddTeachBtn}
    Click    ${CountryEdt}
    FOR    ${index}    IN RANGE    19
        Send Keys  desktop   {TAB}
    END
    Send Keys    desktop    {ENTER}
    Click    ${OKBtn}
    Close Application
[Module3 -3] Test "Delete teacher" page
    Open Application
    Login function
    Click    ${StuNav}
    Click    ${Delete}
[Module3 -4] Test "Update teacher" page
    Click    ${dataItem}
    Click    ${FatherName}
    FOR    ${index}    IN RANGE    22
        Send Keys  desktop   {TAB}
    END
    Send Keys    desktop    {ENTER}