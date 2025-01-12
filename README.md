# Introduction

This is introduction of OpenNet automation test, which incllude 2 parts, **Twitch WAP scrape** and **ipstack API test**.

[Here's my latest Robot report](https://drive.google.com/file/d/11TIO3Qd30Bxmdb7ql7W_RQeXTzaAX9nA/view?usp=sharing)

### 1. Twitch WAP scrape
Utilize [SeleniumLibrary keywords](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Checkbox%20Should%20Not%20Be%20Selected) to scrape [Twitch WAP](https://m.twitch.tv/) screen and capture the screenshot on one of random StarCraft II streamer.\
Please visit `Twitch_Scrape` function to check source code on `Open_QA_Test.py`
#### Test steps:
1. Go to Twitch main page as WAP view
2. Click the search icon
3. Input StarCraft II to search
4. Enter to StarCraft page and catch page title, audience and followers count
5. Scroll down 2 times
6. Select one random streamer
7. Wait for stream loading page and video controller disapper
8. Take a screenshot

#### MP4 Execution 
https://github.com/user-attachments/assets/794e259c-a231-45c4-a07a-f04bcbcc2b84

#### Robot Test Report
![擷取_2025_01_11_12_10_21](https://github.com/user-attachments/assets/61eec53f-957c-4186-9fc3-fdd94795beba)

![擷取_2025_01_11_12_09_55](https://github.com/user-attachments/assets/86805b9d-8aff-4150-a5ef-44e308630f7c)


### 2. ipstack API test
Utilize `GET_Request` method defined by `requests` module to get api response, then doing various comparison with expected to test whether API behavior and responses are correct.\
Create 3 test cases to test different params and show test result on **Robot**. \
`GET_Request` is defined on `API_definition.py`

#### Test steps:
1. GET API with param
2. Check status code is match
3. Check url match as expected, it should include param
4. Check response format is JSON
5. Check response keys or response values comparison
6. **Robot** shows which param failed if test failed


|             Test case name             | Description | Remark |
| -------------------------------------- | ------ | ------ |
|  GET Basic Standard IP Lookup positive |  Test param with valid access key doing positive test<br>1. Check status code is match<br>2. Check url match as expected, it should include param<br>3. Check response format is JSON<br>4. Display all keys data type     |        |
|  GET Basic Standard IP Lookup negative |  Test 3 params with invalid access keys doing negative test<br>1. Check status code is match<br>2. Check url match as expected, it should include param<br>3. Check response format is JSON<br>4. Compare response value match as expected  |        |
| Set Valid and Invalid Hostname  | Test 3 params with valid and invalid hostname, doing tests<br>1. Check status code is match<br>2. Check url match as expected, it should include param<br>3. Check response format is JSON<br>4. Check response in different scenrios<br>- Hostname exist with valid value<br>- Hostname should not exist with successful response<br>- Hostname should not exist with fail response |
| Set Valid and Invalid Hostname  | Test GET, PATCH, POST, PUT, DELETE respectively and check methods support status |  |


#### Robot Test Report

![擷取_2025_01_11_01_57_04](https://github.com/user-attachments/assets/8fdd5d5e-82a6-4420-80c4-a929de86b8b0)

![擷取_2025_01_11_01_55_25](https://github.com/user-attachments/assets/1081df64-bfae-4c50-ae1f-65fbf0121c9b)

![擷取_2025_01_11_19_29_48](https://github.com/user-attachments/assets/a5b0529d-8e51-4d14-860c-76066d3c7024)

![擷取_2025_01_12_10_37_22](https://github.com/user-attachments/assets/37ecb22f-4029-49c9-9122-31c70d4e8836)

