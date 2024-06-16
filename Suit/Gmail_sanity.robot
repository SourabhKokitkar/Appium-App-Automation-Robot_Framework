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