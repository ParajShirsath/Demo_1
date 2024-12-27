*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  String
Variables   Car/Environment/env.py
Variables   Car/PageObjects/CarDetails/car_details.py

*** Keywords ***
Airport Pickup/Drop 
    Click Element    ${car_tab}
    Double Click Element    ${select_type_dropdown}
    Click Element    ${airport_pickupdrop}
    sleep    5s
    Click Element    ${pickup_city}
    input text    ${pickup_city}     ${pc}
    Click Element    ${drop_off_city}
    input text    ${drop_off_city}     ${dc}
    Click Element    ${pickup_address}
    Input Text    ${pickup_address}    ${pickup_addressname}
    Click Element    ${drop_off_address}
    Input Text    ${drop_off_address}    ${drop_off_addressname}
    Click Element    ${cars}
    Input Text    ${cars}    ${number_of_car}
    Click Element    ${guests}
    Input Text    ${guests}    ${number_of_guests}
    Click Element    ${submit_button}
    Sleep    5s
