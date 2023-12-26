*** Settings ***
Library    RPA.Windows
Library    String

*** Variables ***
${AppPath}        C://Users/HIEU VY/OneDrive - Trường ĐH CNTT - University of Information Technology/Máy tính/Phai nồ/bin/Debug/Đồ án.exe
${HomeNav}        type:button name:Home
${ProfNav}        type:button name:Profile
${EduNav}         type:button name:Education
${StuNav}         type:button name:Student
${TeachNav}       type:button name:Teacher
${SubjNav}        type:button name:Subject
${ClassNav}       type:button name:Classes
${SetNav}         type:button name:Setting
${UsernameTxb}    id:focusFirstTextBox
${PassTxb}        id:passwordBox
${LoginBtn}       name:LOGIN
${MenuBtn}        id:PART_Toggle
${ExitBtn}        type:button name:Exit
${delay}          3s
${OKBtn}          id:2
${popup}          id:65535

*** Keywords ***
Wait For Window
    [Arguments]    ${title}
    ${is_opened}    Set Variable    ${False}
    ${failsafe_counter}    Set Variable    20
    WHILE    not ${is_opened} and ${failsafe_counter} > 0
        ${windows}    List Windows
        FOR    ${window}    IN    @{windows}
            ${lines}    Get Lines Containing String    ${window}[title]    ${title}
            ${found_matches}    Get Length    ${lines}
            IF    ${found_matches} > 0
                ${is_opened}    Set Variable    ${True}
                BREAK
            END
        END
        Sleep    0.5s
        ${failsafe_counter}    Evaluate    ${failsafe_counter}-1
    END
    IF    ${failsafe_counter} == 0
       Fail   msg= The ${failsafe_counter} == Window was not found.
    END
Open Application
    Windows Run    ${AppPath}
    Sleep    ${delay}
Close Application
    Click    ${SetNav}
    Sleep    ${delay}
    Click    ${MenuBtn}
    Click    ${ExitBtn}
Login function
    Send Keys    ${Usernametxb}    admin
    Send Keys    ${Passtxb}    admin
    Click    ${LoginBtn}
    Wait For Window    MainWindow
    Sleep    ${delay}
Check Element
    [Arguments]    ${object}
    ${loading}=    Set Variable    ${TRUE}
    ${element}=    Get Element    ${object}    timeout=1
    WHILE    ${loading}
        Run Keyword If    ${element}
            ...    Return From Keyword    Test Passed
        ...    Set Variable    ${loading}    ${FALSE}
    END
    Log    Loading failed
    Fail    Loading failed