*** Settings ***

Resource    ../Resources/Gmail_sanity_keywords.robot
Library    AppiumLibrary

*** Test Cases ***

TC_01_Inbox_Test to check whether user is able to read recent email from inbox
    [Tags]    sanity    Inbox
    
    Test to check whether user is able to read recent email from inbox

TC_02_Inbox_Test to check whether user is able to mark email as read/unread
    [Tags]    sanity    Inbox
    Test to check whether user is able to mark email as read/unread

TC_03_Inbox_Test to check whether user is able to search email/sender and open
    [Tags]    sanity    Inbox
    Test to check whether user is able to search email/sender and open

TC_04_Compose_Test to check whether user is able compose a new email and send
    [Tags]    sanity    Inbox
    Test to check whether user is able compose a new email and send

TC_05_Compose_Test to check whether user is able compose a new email with attachment and send
    [Tags]    sanity    Inbox
    Test to check whether user is able compose a new email with attachment and send

TC_06_Inbox_Test to check whether user is able to download and open received attachment
    [Tags]    sanity    Inbox
    Test to check whether user is able to download and open received attachment

TC_07_Drafts_Test to check whether user is able to compose new email and save it to draft folder
    [Tags]    sanity    Inbox
    Test to check whether user is able to compose new email and save it to draft folder

TC_08_Drafts_Test to check whether user is able to open draft email and send it after editing
    [Tags]    sanity    Inbox
    Test to check whether user is able to open draft email and send it after editing

TC_09_Delete_Test to check whether user is able to delete selected email
    [Tags]    sanity    Inbox
    Test to check whether user is able to delete selected email

TC_10_Delete_Test to check whether user is able to move deleted email back to inbox from bin folder
    [Tags]    sanity    Inbox
    Test to check whether user is able to move deleted email back to inbox from bin folder