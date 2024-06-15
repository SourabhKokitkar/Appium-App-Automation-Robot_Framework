*** Settings ***

Resource    ../Resources/Gmail_sanity_keywords.robot
Library    AppiumLibrary

*** Test Cases ***

TC_01_Inbox_Test to check whether user is able to read recent email from inbox
    [Tags]    sanity    compose
    
    Test to check whether user is able to read recent email from inbox

TC_02_Inbox_Test to check whether user is able to mark email as read/unread
    [Tags]    sanity    compose
    Test to check whether user is able to mark email as read/unread