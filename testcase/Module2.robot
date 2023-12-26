*** Settings ***
Resource    ../page/Main.robot

*** Variables ***
${AddStuBtn}     id:AddStuBtn
${DelAllBtn}     id:DelAllBtn
${CountryEdt}    id:CountryName
${FatherName}    id:FatherName
${dataItem}      type:datitem name:System.Data.Entity.DynamicProxies.User_A4541C7E1A71CB305157F7B78F03B185E950C9868E838D55ED6863B424BB5553
${Delete}

*** Test Cases ***
[Module2 -] Test "Student" page
    Open Application
    Login function
    Click    ${StuNav}
    Check Element    ${AddStuBtn}
    Check Element    ${DelAllBtn}
    Sleep    ${delay}

[Module2 -2] Test "Add student" page
    Click    ${AddStuBtn}
    Click    ${CountryEdt}
    FOR    ${index}    IN RANGE    19
        Send Keys  desktop   {TAB}
    END
    Send Keys    desktop    {ENTER}
    Click    ${OKBtn}
    Close Application
[Module2 -3] Test "Delete student" page
    Open Application
    Login function
    Click    ${StuNav}
    Click    ${Delete}
[Module2 -4] Test "Update student" page
    Click    ${dataItem}
    Click    ${FatherName}
    FOR    ${index}    IN RANGE    22
        Send Keys  desktop   {TAB}
    END
    Send Keys    desktop    {ENTER}