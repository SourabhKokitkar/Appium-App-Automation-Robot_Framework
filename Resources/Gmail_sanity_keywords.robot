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
    

      
