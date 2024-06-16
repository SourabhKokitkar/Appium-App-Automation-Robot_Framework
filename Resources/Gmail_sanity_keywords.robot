*** Settings ***

Resource    ../pom/Gmail_sanity_variables.robot
Library    AppiumLibrary
  

*** Keywords ***
Test to check whether user is able to read recent email from inbox
    Open Application    ${remoteURL}    platformName=${platformName}    deviceName=${deviceName}    udid=${udid}    
    ...    appPackage=${appPackage}    appActivity=${appActivity}    automationName=${automationName}    noReset=true    doesNoReset=true    setClearSystemFiles=false
    Sleep    5
    Click Element    ${emailTile1}
    Sleep    5
    Element Should Be Visible    ${subjectView}
    Sleep    5
    Element Should Be Visible    ${addStar}
    Sleep    5
    Close Application


Test to check whether user is able to mark email as read/unread
    Open Application    ${remoteURL}    platformName=${platformName}    deviceName=${deviceName}    udid=${udid}    
    ...    appPackage=${appPackage}    appActivity=${appActivity}    automationName=${automationName}    noReset=true    doesNoReset=true    setClearSystemFiles=false
    Sleep    5
    Long Press Element    ${Locator1}
    Sleep    5
    Click Element    ${markRead}
    Sleep    3
    Click Element    ${backButton}
    Close Application
    
Test to check whether user is able to search email/sender and open
    Open Application    ${remoteURL}    platformName=${platformName}    deviceName=${deviceName}    udid=${udid}    
    ...    appPackage=${appPackage}    appActivity=${appActivity}    automationName=${automationName}    noReset=true    doesNoReset=true    setClearSystemFiles=false
    Sleep    5
    Click Element    ${searchBar}
    Sleep    5
    Input Text    ${searchBarInputText}    Google
    Sleep    5
    Hide Keyboard
    Element Should Contain Text    ${emailTile}    Google
    Sleep    2
    Close Application

Test to check whether user is able compose a new email and send
    Open Application    ${remoteURL}    platformName=${platformName}    deviceName=${deviceName}    udid=${udid}    
    ...    appPackage=${appPackage}    appActivity=${appActivity}    automationName=${automationName}    noReset=true    doesNoReset=true    setClearSystemFiles=false
    Sleep    5
    Click Element    ${composeButton}
    Sleep    3
    Input Text    ${toField}    skokitkar555@gmail.com,
    Sleep    3
    Input Text    ${subjectField}    This is dummy Subject 123
    Sleep    3
    Input Text    ${emailBody}    This is dummy email body text
    Sleep    3
    Click Element    ${sendButton}
    Sleep    5
    Element Text Should Be    ${emailTileSubject1}    This is dummy subject 123      
    Sleep    3
    Close Application