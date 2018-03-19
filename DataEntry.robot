*** keyword ***
dataentry
    ${comp1}=    'Highest 1'
    ${comp2}=    'Reference 1'
    ${comp3}=    'Database'
    @{Count}    ${comp1}    ${comp2}    ${comp3}
    Set Global Variable    @{Count}
