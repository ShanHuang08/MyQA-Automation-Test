*** Settings ***
Library    Cathay_Auto_Vendor_Test.py

Suite Teardown    Run Keyword If Any Tests Failed    Close_down_all_browsers

*** Test Cases ***
Cathay Auto Test
    [Tags]    Selenium Library
    Robot_Keyword_Scrap_Cathay