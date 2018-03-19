*** Keywords ***
Forgot Password
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    input text    ${USER LOCATION}    ${VALID USER}
    click element    ${FORGOT_PASSWORD}
    sleep    3s
    click button    ${FORGOT_PASSWORD_YES}
    Close Browser

Forgot Password validation
    [Tags]    MultiWindow
    ${Window1Title}=    Get Title
    Select Window    Title=checks360
    Select Window    Title=${Window1Title}
    Wait Until Element Is Visible    id=newPassword
    Click Element    id=newPassword
    sleep    5s
    input text    ${NEW_PASSWORD_LOCATION}    ${NEW_PASSWORD}
    input text    ${CONFIRM_PASSWORD_LOCATION}    ${CONFIRM_PASSWORD}
    click element    ${CONFIRM_BUTTON}
    click element    ${PASSWORD_ALERT}

Invalid NEW Password
    input text    ${NEW_PASSWORD LOCATION}    ${INVALID}
    click element    ${CONFIRM BUTTON}
    sleep    5s
    click element    ${ALERT}

Invalid Confirm Password
    input text    ${CONFIRM PASSWORD LOCATION}    ${INVALID}
    click element    ${CONFIRM BUTTON}
    sleep    5s
    click element    ${ALERT}

Valid New Pasword and Invalid Confirm Password
    input text    ${NEW_PASSWORD LOCATION}    ${NEW PASSWORD}
    input text    ${CONFIRM PASSWORD LOCATION}    ${INVALID}
    click element    ${CONFIRM BUTTON}
    click element    ${ALERT}

Invalid New Password and Valid Confirm Password
    input text    ${NEW_PASSWORD LOCATION}    ${INVALID}
    input text    ${CONFIRM PASSWORD LOCATION}    ${CONFIRM PASSWORD}
    click element    ${CONFIRM BUTTON}
    click element    ${ALERT}

Empty New Password and Confirm Password
    input text    ${NEW_PASSWORD LOCATION}    ${EMPTY}
    input text    ${CONFIRM PASSWORD LOCATION}    ${EMPTY}
    click element    ${ALERT}

Sucessfully Login in change Password.
    input text    ${USER LOCATION}    ${VALID USER}
    input password    ${PASSWORD LOCATION}    ${VALID PASSWORD}
    click button    ${LOGIN}
    Close Browser

Forgot Password Gmail
    open Browser    ${G_URL}    ${BROWSER}
    Maximize Browser Window
    input text    ${GMAIL_LOCATION}    ${GMAIL_ID}
    click element    ${ID_NEXT}
    Wait Until Element Is Visible    ${GMAIL_PASSWORD_LOCATION}
    input text    ${GMAIL_PASSWORD_LOCATION}    ${GMAIL_PASSWORD}
    click element    ${PASSWORD_NEXT}
    Wait Until Element Is Visible    ${E_SEARCH}    10s
    click element    ${E_SEARCH}
    input text    ${E_SEARCH}    ${SEARCH_VALUE}
    click element    ${E_S_CLICK}
    Wait Until Element Is Visible    ${E_IN_LINK}    15s
    click element    ${E_IN_LINK}
    Wait Until Element Is Visible    ${RESET_PASSWORD}    15s
    click element    ${RESET_PASSWORD}
    Select Window    title=Checks360
    Wait Until Element Is Visible    ${NEW_PASSWORD_LOCATION}
    Page Should Contain Element    ${NEW_PASSWORD_LOCATION}
    input text    ${NEW_PASSWORD_LOCATION}    ${NEW_PASSWORD}
    input text    ${CONFIRM_PASSWORD_LOCATION}    ${CONFIRM_PASSWORD}
    click element    ${CONFIRM_BUTTON}
    Wait Until Element Is Visible    ${PASSWORD_ALERT}
    click element    ${PASSWORD_ALERT}
