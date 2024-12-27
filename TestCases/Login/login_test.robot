*** Settings ***
Library  SeleniumLibrary
Variables   ../../Environment/env.py
Variables   ../../PageObjects/Login/login_locators.py
Resource    ../../../Car/Keywords/Login/login_keywords.robot

*** Variables ***



*** Test Cases ***
TC01 Functionality to open browser and login
    Login
    Provide Email And OTP    ${user_name}    ${otp_number}
    sleep     5s

    
