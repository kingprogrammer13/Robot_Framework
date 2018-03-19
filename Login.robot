*** Keywords ***
Login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    input text    ${USER LOCATION}    ${VALID USER}
    input password    ${PASSWORD LOCATION}    ${VALID PASSWORD}
    click button    ${LOGIN}

Client Login2
    Open Browser    ${C_URL}    ${BROWSER}
    Maximize Browser Window
    input text    ${USER LOCATION}    ${CLIENT_USER}
    input password    ${PASSWORD LOCATION}    ${CLIENT_PASSWORD}
    click button    ${LOGIN}

Login1
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    headless
    Call Method    ${chrome_options}    add_argument    disable-gpu
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Set Window Size    1920    1080
    Go To    ${URL}
    input text    ${USER LOCATION}    ${VALID USER}
    input password    ${PASSWORD LOCATION}    ${VALID PASSWORD}
    click button    ${LOGIN}

Client Login
    ${chrome_options}=
    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    headless
    Call Method    ${chrome_options}    add_argument    disable-gpu
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Set Window Size    1920    1080
    Go To    ${URL}
    input text    ${USER LOCATION}    ${CLIENT_USER}
    input password    ${PASSWORD LOCATION}    ${CLIENT_PASSWORD}
    click button    ${LOGIN}
