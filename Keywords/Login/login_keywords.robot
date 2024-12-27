*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  String
Variables   Car/Environment/env.py
Variables   Car/PageObjects/Login/login_locators.py

*** Keywords ***
Login
    open browser    ${tj_url_qa}   ${browser}
    maximize browser window
    Wait Until Page Contains Element    ${next_button }    timeout=10
    
Provide Email and OTP
    [Arguments]    ${user_name}  ${otp_number}
    Click Element    ${email_url}    
    Input Text    ${email_url}    ${user_name}
    Click Element    ${next_button}
    Click Element    ${otp}
    Input Text    ${otp}    ${otp_number}
    Click Element    ${verify_button}




