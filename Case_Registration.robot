*** Keywords ***
Headless
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    headless
    Call Method    ${chrome_options}    add_argument    disable-gpu
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Set Window Size    1920    1080

Random String
    ${RANDOM_STRING}    Generate Random String    8    abcdefghijklmnopqrstuvwxyz
    ${TEMP_FIRST_NAME}    Generate Random String    5    abcdefghijklmnopqrstuvwxyz
    ${TEMP_LAST_NAME}    Generate Random String    1    abcdefghijklmnopqrstuvwxyz
    ${RANDOM_NUMBER}    Generate Random String    13    123456789012
    Set Global Variable    ${RANDOM_STRING}
    Set Global Variable    ${TEMP_FIRST_NAME}
    Set Global Variable    ${TEMP_LAST_NAME}
    Set Global Variable    ${RANDOM_NUMBER}

Random String Search values
    ${firstletter}=    Get substring    ${TEMP_FIRST_NAME}    0    1
    ${upperletter}=    Convert To Uppercase    ${firstletter}
    ${nextletters}=    Get substring    ${TEMP_FIRST_NAME}    1
    ${FIRST_NAME}=    Catenate    ${upperletter}${nextletters}
    ${LAST_NAME}=    Convert To Uppercase    ${TEMP_LAST_NAME}
    Set Global Variable    ${FIRST_NAME}
    Set Global Variable    ${LAST_NAME}
    #Log To Console    ${FIRST_NAME}
    #Log To Console    ${LAST_NAME}

Compounds Selection
    #@{values}=    Create List    Highest 1    Highest 2    Reference 1    Employment 1(Latest/Current)    Current Address
    #...    Permanent Address    Database
    #${count_values}=    Get Length    ${values}
    #Set Global Variable    ${count_values}
    ${Componentxpath}=    set variable    //*[@id='table']/tbody/tr/td/label/strong
    ${Count}=    Get matching xpath count    ${Componentxpath}
    Set Global Variable    ${Componentxpath}
    #Log To Console    ${Count}
    : FOR    ${INDEX}    IN RANGE    1    ${Count}+1
    \    #Log To Console    ${INDEX}
    \    Set Global Variable    ${INDEX}
    \    ${components}=    Get Text    xpath=(${Componentxpath})[${INDEX}]
    \    Set Global Variable    ${components}
    \    #Log To Console    INDEX:${INDEX}    COPONENTS:${components}
    \    Run Keyword If    '${components}' == 'Highest 1'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Highest 2'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == '10th'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == '12th'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Diploma/ITI'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Under Graduate 1'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Under Graduate 2'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Post Graduate 1'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Post Graduate 2'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Professional 1'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Professional 2'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Reference 1'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Reference 2'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Reference 3'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Reference 4'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Reference 5'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Employment 1(Latest/Current)'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Employment 2(Latest/Current)'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Employment 3(Latest/Current)'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Current Address'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Permanent Address'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Address 1'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Address 2'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Address 3'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Address 4'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Address 5'    Run Keyword    Check BOX
    \    Run Keyword If    '${components}' == 'Database'    Run Keyword    Check BOX

Check BOX
    ${Check_Box}=    set variable    //input[@ng-model='compo.selected']
    ${Count}=    Get matching xpath count    ${Check_Box}
    Set Global Variable    ${Check_Box}
    #Log To Console    ${INDEX}
    #Log To Console    ${Count}
    click element    xpath=(${Check_Box})[${INDEX}]

Gmail
    open Browser    ${G_URL}    ${BROWSER}
    Maximize Browser Window
    input text    ${GMAIL_LOCATION}    ${GMAIL_ID}
    click element    ${ID_NEXT}
    Wait Until Element Is Visible    ${GMAIL_PASSWORD_LOCATION}
    input text    ${GMAIL_PASSWORD_LOCATION}    ${GMAIL_PASSWORD}
    click element    ${PASSWORD_NEXT}
    Wait Until Element Is Visible    ${E_SEARCH}    10s
    click element    ${E_SEARCH}
    input text    ${E_SEARCH}    ${Gmail_Search}
    sleep    5s
    click element    ${E_S_CLICK}
    Wait Until Element Is Visible    ${E_IN_LINK}    15s
    click element    ${E_IN_LINK}
    wait Until Element Is Visible    ${Setup_Password}
    click element    ${Setup_Password}
    Select Window    title=Checks360
    Wait Until Element Is Visible    ${NEW_PASSWORD_LOCATION}
    Page Should Contain Element    ${NEW_PASSWORD_LOCATION}
    input text    ${NEW_PASSWORD_LOCATION}    ${NEW_PASSWORD}
    input text    ${CONFIRM_PASSWORD_LOCATION}    ${CONFIRM_PASSWORD}
    click element    ${CONFIRM_BUTTON}
    wait until element is enabled    ${Password_Alert}
    click element    ${Password_Alert}
