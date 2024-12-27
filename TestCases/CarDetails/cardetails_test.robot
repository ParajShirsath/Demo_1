*** Settings ***
Library  SeleniumLibrary
Variables   ../../Environment/env.py
Variables   ../../../Car/PageObjects/CarDetails/car_details.py
Variables   ../../../Car/PageObjects/Login/login_locators.py
Variables   ../../PageObjects/Login/login_locators.py
Resource    ../../Keywords/Login/login_keywords.robot
Resource    ../../../Car/Keywords/CarDetails/car_details.robot

*** Variables ***


*** Test Cases ***
TC01 Functionality to open browser and login
    Login
    Provide Email And OTP
    sleep     5s
TC02 Functionality to select Airport Pickup and drop
    Login
    Provide Email And OTP
    sleep     5s
    Airport Pickup/Drop
