# Introduction

This is introduction of OpenNet automation test, which incllude 2 parts, **Twitch WAP scrape** and **ipstack API test**.

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

#### Execution MP4

https://github.com/user-attachments/assets/794e259c-a231-45c4-a07a-f04bcbcc2b84



#### Robot Test Report
![擷取_2025_01_11_12_10_21](https://github.com/user-attachments/assets/61eec53f-957c-4186-9fc3-fdd94795beba)

![擷取_2025_01_11_12_09_55](https://github.com/user-attachments/assets/86805b9d-8aff-4150-a5ef-44e308630f7c)




### 2. ipstack API test
