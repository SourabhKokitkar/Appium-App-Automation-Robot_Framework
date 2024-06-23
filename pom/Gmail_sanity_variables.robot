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

${addAttachment}    com.google.android.gm:id/add_attachment
${attachFileOption}    //android.widget.TextView[@resource-id="com.google.android.gm:id/title" and @text="Attach file"]
${hamBurgerMenu}    //android.widget.ImageButton[@content-desc="Show roots"]
${downloadFolder}    //android.widget.TextView[@resource-id="android:id/title" and @text="Downloads"]
${imageSelection}    com.google.android.documentsui:id/icon_thumb
${attachementTile}    com.google.android.gm:id/attachment_tile_icon

${downloadButton}    com.google.android.gm:id/attachment_tile_save
${photoView}    com.google.android.gm:id/photo_view

#Drafts
${backButton2}    //android.widget.ImageButton[@content-desc="Navigate up"]
${hamBurgerMenuMail}    //android.widget.ImageButton[@content-desc="Open navigation drawer"]
${draftsFolder}    //android.widget.TextView[@resource-id="com.google.android.gm:id/hub_drawer_label_title" and @text="Drafts"]
${emailTileSubject2}    //android.widget.TextView[@resource-id="com.google.android.gm:id/subject" and @text="This is dummy Subject for drafts"]
${emailSubject}    com.google.android.gm:id/subject_and_folder_view

${editDraft}    com.google.android.gm:id/edit_draft
${deleteMail}    com.google.android.gm:id/delete
${bin}    //android.widget.TextView[@resource-id="com.google.android.gm:id/hub_drawer_label_title" and @text="Bin"]
${emailTileSubject3}    //android.widget.TextView[@resource-id="com.google.android.gm:id/subject" and @text="This is dummy Subject for drafts"]
${optionsDots}    //android.widget.ImageView[@content-desc="More options"]
${moveTo}    //android.widget.TextView[@resource-id="com.google.android.gm:id/title" and @text="Move to"]
${primaryEmails}    //android.widget.TextView[@resource-id="com.google.android.gm:id/folder_name" and @text="Primary"]
${primaryTab}    //android.widget.TextView[@resource-id="com.google.android.gm:id/hub_drawer_label_title" and @text="Primary"]










*** Keywords ***
Long Press Element
    [Arguments]    ${xpath}
    ${element}=    Get Webelement    ${xpath}
    Long Press    ${element}

