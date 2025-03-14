*** Settings ***
Library    Cathay_Auto_Vendor_Test.py

Suite Teardown    Run Keyword If Any Tests Failed    Close_down_all_browsers

*** Test Cases ***
Cathay Auto Test
    [Tags]    Selenium
    Scrap_Cathay
    [Teardown]    Close_Browser    Base

Use Robot Keyword to run Cathay Auto Test
    [Tags]    SeleniumLibrary
    Robot_Keyword_Scrap_Cathay
    [Teardown]    Close_Browser    Robot