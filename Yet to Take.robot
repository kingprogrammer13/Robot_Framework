*** Settings ***
Library           Selenium2Library
Library           String
Variables         myvariables.py
Variables         Case_Reg_Values.py
Resource          Login.robot
Resource          Case_Registration.robot
Variables         Case_Reg_Alerts.py
Variables         Case_Reg_Path.py
Variables         DataEntry_Path.py
Variables         DataEntry_Values.py
Variables         CaseManager_Path.py
Variables         CaseManager_Values.py
Variables         Master_Path.py
Variables         Master_Values.py

*** Test Cases ***
To valdiate for the candidate forgot password
    Close Browser
    sleep    3s
    Login
    Random String
    sleep    3s
    click element    ${Case_Registration}
    wait until element is enabled    ${Register_New_Case}
    click element    ${Register_New_Case}
    wait until element is enabled    ${Client_Project}
    click element    ${Client_Project}
    input text    ${Client_Location}    ${Client1}
    click element    ${Client_Select}
    wait until element is enabled    ${Data_Entry}
    click element    ${Data_Entry}
    wait until element is enabled    ${Candidate}
    click element    ${Candidate}
    wait until element is enabled    ${First_Name_Location}
    input text    ${First_Name_Location}    ${TEMP_FIRST_NAME}
    input text    ${Last_Name_Location}    ${TEMP_LAST_NAME}
    click element    ${Date_Of_Birth}
    click element    ${Month}
    click element    ${Years}
    click element    ${Year}
    click element    ${Select_Year}
    click element    ${Select_Month}
    click element    ${Select_Day}
    click element    ${Gender_Location}
    click element    ${Gender_Select}
    wait until element is enabled    ${Email_Location}
    input text    ${Email_Location}    ${RANDOM_STRING}@gmail.com
    input text    ${Father_First_Name_Location}    ${TEMP_FIRST_NAME}
    input text    ${Father_Last_Name_Location}    ${TEMP_LAST_NAME}
    #sleep    3s
    click element    ${Client_ID}
    input text    ${Client_ID}    ${Client_Ref_NO}
    click element    ${Marital_Status}
    click element    ${Marital_Status_Select}
    click element    ${Employe_ID_Location}
    input text    ${Employe_ID_Location}    ${Employe_ID}
    input text    ${Landline_Number_Location}    ${Landline_Number}
    input text    ${Mobile_Number_Location}    ${Mobile_Number}
    click element    ${Priority}
    click element    ${Priority_Select}
    wait until element is enabled    ${HR_MailID}
    click element    ${HR_MailID}
    input text    ${HR_MailID}    ${Email}
    click element    ${checkBOx}
    wait until element is enabled    ${Save_Submit}
    click element    ${Save_Submit}
    wait until element is enabled    ${Save_But_Alert}
    Element Should Contain    ${Alert_Message}    ${Initiatemail_Alert}
    Click Element    ${Save_ok}
    sleep    3s
    close Browser
    open Browser    ${G_URL}    ${BROWSER}
    Maximize Browser Window
    input text    ${GMAIL_LOCATION}    ${Email}
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
    wait until element is enabled    ${USER LOCATION}
    input text    ${USER LOCATION}    ${Can_Login}
    sleep    2s
    click element    ${FORGOT_PASSWORD}
    sleep    3s
    click button    ${FORGOT_PASSWORD_YES}
    Close Browser
    sleep    3s
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
    sleep    3s
    input text    ${USER LOCATION}    ${RANDOM_STRING}@gmail.com
    input password    ${PASSWORD LOCATION}    ${CONFIRM_PASSWORD}
    click button    ${LOGIN}
    Close Browser

To validate for the stop case re initiate in the case registration
    Close Browser
    sleep    3s
    Login
    Random String
    sleep    3s
    click element    ${Case_Registration}
    wait until element is enabled    ${Register_New_Case}
    click element    ${Register_New_Case}
    wait until element is enabled    ${Client_Project}
    click element    ${Client_Project}
    input text    ${Client_Location}    ${Client1}
    click element    ${Client_Select}
    wait until element is enabled    ${Data_Entry}
    click element    ${Data_Entry}
    wait until element is enabled    ${Service Provider}
    click element    ${Service Provider}
    wait until element is enabled    ${First_Name_Location}
    input text    ${First_Name_Location}    ${TEMP_FIRST_NAME}
    input text    ${Last_Name_Location}    ${TEMP_LAST_NAME}
    click element    ${Date_Of_Birth}
    click element    ${Month}
    click element    ${Years}
    click element    ${Year}
    click element    ${Select_Year}
    click element    ${Select_Month}
    click element    ${Select_Day}
    click element    ${Gender_Location}
    click element    ${Gender_Select}
    wait until element is enabled    ${Email_Location}
    input text    ${Email_Location}    ${RANDOM_STRING}@gmail.com
    input text    ${Father_First_Name_Location}    ${TEMP_FIRST_NAME}
    input text    ${Father_Last_Name_Location}    ${TEMP_LAST_NAME}
    click element    ${Client_ID}
    input text    ${Client_ID}    ${Client_Ref_NO}
    wait until element is enabled    ${HR_MailID}
    click element    ${HR_MailID}
    input text    ${HR_MailID}    ${RANDOM_STRING}@gmail.com
    click element    ${Priority}
    click element    ${Priority_Select}
    click element    ${checkBOx}
    wait until element is enabled    ${Save_Submit}
    click element    ${Save_Submit}
    sleep    2s
    Element Should Contain    ${Alert_Message}    ${Save_submit_Alert}
    Click Element    ${Save_ok}
    #re initiing the case for second time
    sleep    3s
    click element    ${Case_Registration}
    wait until element is enabled    ${Register_New_Case}
    click element    ${Register_New_Case}
    wait until element is enabled    ${Client_Project}
    click element    ${Client_Project}
    input text    ${Client_Location}    ${Client1}
    click element    ${Client_Select}
    wait until element is enabled    ${Data_Entry}
    click element    ${Data_Entry}
    wait until element is enabled    ${Service Provider}
    click element    ${Service Provider}
    wait until element is enabled    ${First_Name_Location}
    input text    ${First_Name_Location}    ${TEMP_FIRST_NAME}
    input text    ${Last_Name_Location}    ${TEMP_LAST_NAME}
    click element    ${Date_Of_Birth}
    click element    ${Month}
    click element    ${Years}
    click element    ${Year}
    click element    ${Select_Year}
    click element    ${Select_Month}
    click element    ${Select_Day}
    click element    ${Gender_Location}
    click element    ${Gender_Select}
    wait until element is enabled    ${Email_Location}
    input text    ${Email_Location}    ${RANDOM_STRING}@gmail.com
    input text    ${Father_First_Name_Location}    ${TEMP_FIRST_NAME}
    input text    ${Father_Last_Name_Location}    ${TEMP_LAST_NAME}
    click element    ${Client_ID}
    input text    ${Client_ID}    ${Client_Ref_NO}
    wait until element is enabled    ${HR_MailID}
    click element    ${HR_MailID}
    input text    ${HR_MailID}    ${RANDOM_STRING}@gmail.com
    click element    ${Priority}
    click element    ${Priority_Select}
    click element    ${checkBOx}
    wait until element is enabled    ${Save_Submit}
    click element    ${Save_Submit}
    sleep    2s
    Element Should Contain    ${Alert_Message}    ${Email_Alert}
    Click Element    ${Save_ok}
    sleep    3s
    click element    ${CaseManager}
    sleep    2s
    click element    ${Conformation_Alert_yes}
    sleep    2s
    click element    ${CaseManager}
    click element    ${Case_Search_Text}
    input text    ${Case_Search_Text}    ${TEMP_FIRST_NAME}
    click element    ${Case_Search}
    sleep    2s
    wait until element is enabled    ${Stop_case}
    click element    ${Stop_case}
    wait until element is enabled    ${Stop_Case_Comment}
    #//button[text()='Stop Case']
    click element    ${Stop_Case_Comment}
    input text    ${Stop_Case_Comment}    ${Stop_Comment}
    sleep    2s
    click element    ${Stop_Case_button}
    #re initiing the case for third time after stop case
    sleep    3s
    click element    ${Case_Registration}
    wait until element is enabled    ${Register_New_Case}
    click element    ${Register_New_Case}
    wait until element is enabled    ${Client_Project}
    click element    ${Client_Project}
    input text    ${Client_Location}    ${Client1}
    click element    ${Client_Select}
    wait until element is enabled    ${Data_Entry}
    click element    ${Data_Entry}
    wait until element is enabled    ${Service Provider}
    click element    ${Service Provider}
    wait until element is enabled    ${First_Name_Location}
    input text    ${First_Name_Location}    ${TEMP_FIRST_NAME}
    input text    ${Last_Name_Location}    ${TEMP_LAST_NAME}
    click element    ${Date_Of_Birth}
    click element    ${Month}
    click element    ${Years}
    click element    ${Year}
    click element    ${Select_Year}
    click element    ${Select_Month}
    click element    ${Select_Day}
    click element    ${Gender_Location}
    click element    ${Gender_Select}
    wait until element is enabled    ${Email_Location}
    input text    ${Email_Location}    ${RANDOM_STRING}@gmail.com
    input text    ${Father_First_Name_Location}    ${TEMP_FIRST_NAME}
    input text    ${Father_Last_Name_Location}    ${TEMP_LAST_NAME}
    click element    ${Client_ID}
    input text    ${Client_ID}    ${Client_Ref_NO}
    wait until element is enabled    ${HR_MailID}
    click element    ${HR_MailID}
    input text    ${HR_MailID}    ${RANDOM_STRING}@gmail.com
    click element    ${Priority}
    click element    ${Priority_Select}
    click element    ${checkBOx}
    wait until element is enabled    ${Save_Submit}
    click element    ${Save_Submit}
    sleep    2s
    Element Should Contain    ${Alert_Message}    ${Save_submit_Alert}
    Click Element    ${Save_ok}

To validate for Remove RP and Insuff from Case Registration.
    Login
    Random String
    sleep    3s
    click element    ${Case_Registration}
    sleep    2s
    click element    ${Register_New_Case}
    wait until element is enabled    ${Client_Project}
    click element    ${Client_Project}
    input text    ${Client_Location}    ${Client1}
    click element    ${Client_Select}
    wait until element is enabled    ${Data_Entry}
    click element    ${Data_Entry}
    wait until element is enabled    ${Candidate}
    click element    ${Candidate}
    wait until element is enabled    ${First_Name_Location}
    input text    ${First_Name_Location}    ${TEMP_FIRST_NAME}
    input text    ${Last_Name_Location}    ${TEMP_LAST_NAME}
    click element    ${Date_Of_Birth}
    click element    ${Month}
    click element    ${Years}
    click element    ${Year}
    click element    ${Select_Year}
    click element    ${Select_Month}
    click element    ${Select_Day}
    click element    ${Gender_Location}
    click element    ${Gender_Select}
    wait until element is enabled    ${Email_Location}
    input text    ${Email_Location}    ${RANDOM_STRING}@gmail.com
    input text    ${Father_First_Name_Location}    ${TEMP_FIRST_NAME}
    input text    ${Father_Last_Name_Location}    ${TEMP_LAST_NAME}
    sleep    3s
    click element    ${Client_ID}
    input text    ${Client_ID}    ${Client_Ref_NO}
    click element    ${Marital_Status}
    click element    ${Marital_Status_Select}
    click element    ${Employe_ID_Location}
    input text    ${Employe_ID_Location}    ${Employe_ID}
    input text    ${Landline_Number_Location}    ${Landline_Number}
    input text    ${Mobile_Number_Location}    ${Mobile_Number}
    click element    ${Priority}
    click element    ${Priority_Select}
    wait until element is enabled    ${HR_MailID}
    click element    ${HR_MailID}
    input text    ${HR_MailID}    ${HR_Email}
    click element    ${checkBOx}
    sleep    2s
    Element Should Not Be Visible    ${Insuff}
    Element Should Not Be Visible    ${Insuff_Comment_Location}
    Element Should Be visible    ${YTR}
    Element Should Be visible    ${YTR_Comment_Location}
    Element Should Not Be Visible    ${RP}
    Element Should Not Be Visible    ${RP_Comment_Location}
    sleep    3s
    click element    ${Save}
    sleep    3s
    click element    ${Save_ok}
    Close Browser

To validate for the Service provider notification mail ID auto populate from the DB and its accept n-number of ID's
    Close Browser
    sleep    3s
    Login
    Random String
    Random String Search values
    sleep    3s
    click element    ${Case_Registration}
    wait until element is enabled    ${Register_New_Case}
    click element    ${Register_New_Case}
    wait until element is enabled    ${Client_Project}
    click element    ${Client_Project}
    input text    ${Client_Location}    ${Client1}
    click element    ${Client_Select}
    wait until element is enabled    ${Data_Entry}
    click element    ${Data_Entry}
    wait until element is enabled    ${Candidate}
    click element    ${Candidate}
    wait until element is enabled    ${First_Name_Location}
    input text    ${First_Name_Location}    ${TEMP_FIRST_NAME}
    input text    ${Last_Name_Location}    ${TEMP_LAST_NAME}
    click element    ${Date_Of_Birth}
    click element    ${Month}
    click element    ${Years}
    click element    ${Year}
    click element    ${Select_Year}
    click element    ${Select_Month}
    click element    ${Select_Day}
    click element    ${Gender_Location}
    click element    ${Gender_Select}
    wait until element is enabled    ${Email_Location}
    input text    ${Email_Location}    ${RANDOM_STRING}@gmail.com
    input text    ${Father_First_Name_Location}    ${TEMP_FIRST_NAME}
    input text    ${Father_Last_Name_Location}    ${TEMP_LAST_NAME}
    #sleep    3s
    click element    ${Client_ID}
    input text    ${Client_ID}    ${Client_Ref_NO}
    click element    ${Marital_Status}
    click element    ${Marital_Status_Select}
    click element    ${Employe_ID_Location}
    input text    ${Employe_ID_Location}    ${Employe_ID}
    input text    ${Landline_Number_Location}    ${Landline_Number}
    input text    ${Mobile_Number_Location}    ${Mobile_Number}
    click element    ${Priority}
    click element    ${Priority_Select}
    sleep    2s
    wait until element is enabled    ${HR_MailID}
    click element    ${HR_MailID}
    #input text    ${HR_MailID}    ${RANDOM_STRING}@gmail.com
    sleep    7s
    Element Should Contain    ${HR_MailID}    ${mail_Autopopulate1}
    Element Should Contain    ${HR_MailID}    ${mail_Autopopulate2}
    Close Browser

To validate for the Client notification mail ID auto populate from the DB and its accept n-number of ID's
    Close Browser
    sleep    3s
    Client Login
    Random String
    Random String Search values
    sleep    3s
    click element    ${Case_Registration}
    wait until element is enabled    ${Register_New_Case}
    click element    ${Register_New_Case}
    wait until element is enabled    ${Client_Project}
    click element    ${Client_Project}
    input text    ${Client_Location}    ${Client1}
    click element    ${Client_Select}
    wait until element is enabled    ${Data_Entry}
    click element    ${Data_Entry}
    wait until element is enabled    ${Candidate}
    click element    ${Candidate}
    wait until element is enabled    ${First_Name_Location}
    input text    ${First_Name_Location}    ${TEMP_FIRST_NAME}
    input text    ${Last_Name_Location}    ${TEMP_LAST_NAME}
    click element    ${Date_Of_Birth}
    click element    ${Month}
    click element    ${Years}
    click element    ${Year}
    click element    ${Select_Year}
    click element    ${Select_Month}
    click element    ${Select_Day}
    click element    ${Gender_Location}
    click element    ${Gender_Select}
    wait until element is enabled    ${Email_Location}
    input text    ${Email_Location}    ${RANDOM_STRING}@gmail.com
    input text    ${Father_First_Name_Location}    ${TEMP_FIRST_NAME}
    input text    ${Father_Last_Name_Location}    ${TEMP_LAST_NAME}
    #sleep    3s
    click element    ${Client_ID}
    input text    ${Client_ID}    ${Client_Ref_NO}
    click element    ${Marital_Status}
    click element    ${Marital_Status_Select}
    click element    ${Employe_ID_Location}
    input text    ${Employe_ID_Location}    ${Employe_ID}
    input text    ${Landline_Number_Location}    ${Landline_Number}
    input text    ${Mobile_Number_Location}    ${Mobile_Number}
    click element    ${Priority}
    click element    ${Priority_Select}
    sleep    2s
    wait until element is enabled    ${HR_MailID}
    click element    ${HR_MailID}
    #input text    ${HR_MailID}    ${RANDOM_STRING}@gmail.com
    sleep    7s
    Element Should Contain    ${HR_MailID}    ${mail_Autopopulate1}
    Element Should Contain    ${HR_MailID}    ${mail_Autopopulate2}
    Close Browser

To validate for project should not mapped by default
    Close Browser
    sleep    3s
    Login
    Random String
    sleep    3s
    click element    ${Client}
    wait until element is visible    ${Projects}
    click element    ${Projects}
    wait until element is visible    ${Projects_Name_Location}
    input text    ${Projects_Name_Location}    ${Project_Name}
    wait until element is enabled    ${Client_Project}
    click element    ${Client_Project}
    input text    ${Project_Client_Location}    ${Project1}
    click element    ${Client_Select}
    sleep    2s
    click element    ${Search_Button}
    sleep    2s
    click element    ${Project_Edit}
    sleep    2s
    #Checkbox Should Not Be Selected    ${Project_checkBox}
    Checkbox Should Be Selected    ${Project_checkBox}
    close browser
