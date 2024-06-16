*** Settings ***
Library    AppiumLibrary

Resource    ../Resources/Gmail_sanity_keywords.robot

*** Variables ***

#Config_Device1
${remoteURL}    http://localhost:4723/wd/hub
${platformName}    Android
${deviceName}    Redmi K20 Pro
${udid}    7b58e0ef
${appPackage}    com.google.android.gm
${appActivity}    .ConversationListActivityGmail
${automationName}    Uiautomator2

#Inbox
${emailTile1}    //(//android.widget.TextView[@resource-id="com.google.android.gm:id/senders"])[2]
${subjectView}    com.google.android.gm:id/subject_and_folder_view
${addStar}    com.google.android.gm:id/conversation_header_star
${Locator1}    //(//android.widget.TextView[@resource-id="com.google.android.gm:id/senders"])[2]
${optionsTab}    //android.widget.ImageButton[@content-desc="Open navigation drawer"]
${markRead}    com.google.android.gm:id/read
${backButton}    com.google.android.gm:id/action_mode_close_button

${searchBar}    com.google.android.gm:id/open_search_bar_text_view
${searchBarInputText}    //android.widget.TextView[@resource-id="com.google.android.gm:id/open_search_bar_text_view"]
${emailTile}    //(//android.widget.TextView[@resource-id="com.google.android.gm:id/senders"])[1]

#Compose
${composeButton}    com.google.android.gm:id/compose_button
${toField}    //android.view.ViewGroup[@resource-id="com.google.android.gm:id/peoplekit_autocomplete_chip_group"]/android.widget.EditText
${subjectField}    com.google.android.gm:id/subject
${emailBody}    //android.widget.EditText[@text="Compose email"]
${sendButton}    com.google.android.gm:id/send
${emailTileSubject1}    //(//android.widget.TextView[@resource-id="com.google.android.gm:id/subject"])[1]


*** Keywords ***
Long Press Element
    [Arguments]    ${xpath}
    ${element}=    Get Webelement    ${xpath}
    Long Press    ${element}

