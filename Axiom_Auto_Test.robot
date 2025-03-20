*** Settings ***
Library    Axiom_Auto_Test.py



*** Test Cases ***
GET Pokemon API response with name
    [Tags]    API test
    GET_Pokemon_Api_response    pikachu

GET Pokemon API response with ID
    [Tags]    API test
    GET_Pokemon_Api_response    25

GET Pokemon Api with various methods
    [Tags]    API test
    GET_Pokemon_Api_with_various_methods

Run Websocket
    [Tags]    Websocket
    Run_Websocket

Swag Labs Web Scrape
    [Tags]    Selenium
    Swag_Labs_Web_Scrape    2
    [Teardown]    Close_browsers