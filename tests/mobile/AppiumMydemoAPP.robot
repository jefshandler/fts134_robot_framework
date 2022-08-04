# This sample code uses the Appium robot client
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with robot
#
#  more keywords on: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html

*** Settings ***
Library           AppiumLibrary

Test Teardown    Quit Application

#Suite Teardown    Close Application

*** Variables ***
${REMOTE_URL}   http://127.0.0.1:4723/wd/hub
${platformName}    Android
${appium:automationName}    uiautomator2
${appium:deviceName}    emulator-5556
${appium:appPackage}    com.saucelabs.mydemoapp.android
${appium:appActivity}    com.saucelabs.mydemoapp.android.view.activities.SplashActivity
${appium:avd}    Pixel2RUFUSb
${appium:deviceOrientation}    portrait
${appium:ensureWebviewsHavePages}    true
${appium:nativeWebScreenshot}    true
${appium:newCommandTimeout}    3600
${appium:connectHardwareKeyboard}    true

*** Test Cases ***
Test case name

    Open Application    ${REMOTE_URL}   platformName=${platformName}  appium:automationName=${appium:automationName}  appium:deviceName=${appium:deviceName}  appium:appPackage=${appium:appPackage}  appium:appActivity=${appium:appActivity}  appium:avd=${appium:avd}  appium:deviceOrientation=${appium:deviceOrientation}  appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}  appium:nativeWebScreenshot=${appium:nativeWebScreenshot}  appium:newCommandTimeout=${appium:newCommandTimeout}  appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}
    # accessibility id=Sauce Lab Bolt T-Shirt
    Wait Until Page Contains Element       accessibility_id=Sauce Lab Bolt T-Shirt
    Click Element    accessibility_id=Sauce Lab Bolt T-Shirt
    # id=com.saucelabs.mydemoapp.android:id/productTV
    Wait Until Page Contains Element        id=com.saucelabs.mydemoapp.android:id/productTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/productTV
    # id=com.saucelabs.mydemoapp.android:id/start5IV
    Click Element    id=com.saucelabs.mydemoapp.android:id/start5IV
    # accessibility id=Closes review dialog
    Click Element    accessibility_id=Closes review dialog

    Swipe    932    1804    945    853
    Swipe    913    1641    980    390
    # accessibility_id=Increase item quantity
    Click Element    accessibility_id=Increase item quantity
    # id=com.saucelabs.mydemoapp.android:id/noTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/noTV
    # accessibility_id=Tap to add product to cart
    Click Element    accessibility_id=Tap to add product to cart
    # id=com.saucelabs.mydemoapp.android:id/cartIV
    Click Element    id=com.saucelabs.mydemoapp.android:id/cartIV
    # id=com.saucelabs.mydemoapp.android:id/productTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/productTV
    # id=com.saucelabs.mydemoapp.android:id/titleTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/titleTV
    # id=com.saucelabs.mydemoapp.android:id/priceTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/priceTV
    # accessibility_id=Displays color of selected product
    Wait Until Page Contains Element        accessibility_id=Displays color of selected product
    Click Element    accessibility_id=Displays color of selected product
    # id=com.saucelabs.mydemoapp.android:id/noTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/noTV
    # id=com.saucelabs.mydemoapp.android:id/itemsTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/itemsTV
    # id=com.saucelabs.mydemoapp.android:id/totalPriceTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/totalPriceTV

