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
    Sleep    5
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
    Sleep    5
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
    Element Should Contain Text    ${emailTileSubject1}    This is dummy Subject 123      
    Sleep    3
    Close Application

Test to check whether user is able compose a new email with attachment and send
    Sleep    5
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
    Click Element    ${addAttachment}
    Sleep    3
    Click Element    ${attachFileOption}
    Sleep    3
    Click Element    ${hamBurgerMenu}
    Sleep    3
    Click Element    ${downloadFolder}
    Sleep    3
    Click Element    ${imageSelection}
    Sleep    2
    Click Element    ${sendButton}
    Sleep    12
    Click Element    ${emailTileSubject1}
    Sleep    3
    Element Should Be Visible    ${attachementTile}
    Sleep    2
    Close Application

Test to check whether user is able to download and open received attachment
    Sleep    5
    Open Application    ${remoteURL}    platformName=${platformName}    deviceName=${deviceName}    udid=${udid}    
    ...    appPackage=${appPackage}    appActivity=${appActivity}    automationName=${automationName}    noReset=true    doesNoReset=true    setClearSystemFiles=false
    Sleep    5
    Click Element    ${emailTileSubject1}
    Sleep    3
    Click Element    ${downloadButton}
    Sleep    3
    Click Element    ${attachementTile}
    Sleep    3
    Element Should Be Visible    ${photoView}
    Sleep    3
    Close Application

Test to check whether user is able to compose new email and save it to draft folder
    Sleep    5
    Open Application    ${remoteURL}    platformName=${platformName}    deviceName=${deviceName}    udid=${udid}    
    ...    appPackage=${appPackage}    appActivity=${appActivity}    automationName=${automationName}    noReset=true    doesNoReset=true    setClearSystemFiles=false
    Sleep    5
    Click Element    ${composeButton}
    Sleep    3
    Input Text    ${toField}    skokitkar555@gmail.com,
    Sleep    3
    Input Text    ${subjectField}    This is dummy Subject for drafts
    Sleep    3
    Input Text    ${emailBody}    This is dummy email body text to save in drafts
    Sleep    3
    Click Element    ${backButton2}
    Sleep    3
    Click Element    ${hamBurgerMenuMail}
    Sleep    3
    Click Element    ${draftsFolder}
    Sleep    3
    Element Should Be Visible    ${emailTileSubject2}
    Sleep    3
    Click Element    ${emailTileSubject2}
    Sleep    3
    Element Should Contain Text    ${emailSubject}    This is dummy Subject for drafts
    Sleep    3
    Close Application

Test to check whether user is able to open draft email and send it after editing
    Sleep    5
    Open Application    ${remoteURL}    platformName=${platformName}    deviceName=${deviceName}    udid=${udid}    
    ...    appPackage=${appPackage}    appActivity=${appActivity}    automationName=${automationName}    noReset=true    doesNoReset=true    setClearSystemFiles=false
    Sleep    5
    Click Element    ${composeButton}
    Sleep    3
    Click Element    ${toField}
    Sleep    1
    Input Text    ${toField}    skokitkar555@gmail.com,
    Sleep    3
    Input Text    ${subjectField}    This is dummy Subject for drafts
    Sleep    3
    Input Text    ${emailBody}    This is dummy email body text to save in drafts
    Sleep    3
    Click Element    ${backButton2}
    Sleep    3
    Click Element    ${hamBurgerMenuMail}
    Sleep    3
    Click Element    ${draftsFolder}
    Sleep    3
    Element Should Be Visible    ${emailTileSubject2}
    Sleep    3
    Click Element    ${emailTileSubject2}
    Sleep    3
    Click Element    ${editDraft}
    Sleep    3
    Click Element    ${sendButton}
    Sleep    5
    Close Application
    
Test to check whether user is able to delete selected email
    Sleep    5
    Open Application    ${remoteURL}    platformName=${platformName}    deviceName=${deviceName}    udid=${udid}    
    ...    appPackage=${appPackage}    appActivity=${appActivity}    automationName=${automationName}    noReset=true    doesNoReset=true    setClearSystemFiles=false
    Sleep    5
    ${emailSubjectTrash}=    Get Text    ${emailTileSubject1}    
    Log    The text fetched from the element is: ${emailSubjectTrash}
    Sleep    2
    Click Element    ${emailTileSubject1}
    Sleep    3
    Click Element    ${deleteMail}
    Sleep    3
    Click Element    ${hamBurgerMenuMail}
    Sleep    3
    Click Element    ${bin}
    Sleep    3
    ${emailSubjectTrashActual}=    Get Text    ${emailTileSubject1}
    Log    The text fetched from the element is: ${emailSubjectTrashActual}
    Should Be Equal    ${emailSubjectTrash}    ${emailSubjectTrashActual}
    Sleep    3
    Close Application

Test to check whether user is able to move deleted email back to inbox from bin folder
    Sleep    5
    Open Application    ${remoteURL}    platformName=${platformName}    deviceName=${deviceName}    udid=${udid}    
    ...    appPackage=${appPackage}    appActivity=${appActivity}    automationName=${automationName}    noReset=true    doesNoReset=true    setClearSystemFiles=false
    Sleep    5
    ${emailSubjectTrash}=    Get Text    ${emailTileSubject1}    
    Log    The text fetched from the element is: ${emailSubjectTrash}
    Sleep    2
    Click Element    ${emailTileSubject1}
    Sleep    3
    Click Element    ${deleteMail}
    Sleep    3
    Click Element    ${hamBurgerMenuMail}
    Sleep    3
    Click Element    ${bin}
    Sleep    3
    ${emailSubjectTrashActual}=    Get Text    ${emailTileSubject1}
    Log    The text fetched from the element is: ${emailSubjectTrashActual}
    Should Be Equal    ${emailSubjectTrash}    ${emailSubjectTrashActual}
    Sleep    3
    Long Press Element    ${emailTileSubject1}
    Click Element    ${optionsDots}
    Sleep    3
    Click Element    ${moveTo}
    Sleep    3
    Click Element    ${primaryEmails}
    Sleep    3
    Click Element    ${hamBurgerMenuMail}
    Sleep    3
    Click Element    ${primaryTab}
    Sleep    3
    ${emailSubjectinboxActual}=    Get Text    ${emailTileSubject1}
    Log    The text fetched from the element is: ${emailSubjectTrashActual}
    Should Be Equal    ${emailSubjectinboxActual}    ${emailSubjectTrashActual}
    Close Application