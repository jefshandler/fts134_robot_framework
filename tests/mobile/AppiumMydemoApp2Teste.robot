# This sample code uses the Appium robot client
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with robot
#
#  more keywords on: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html

*** Settings ***
Library           AppiumLibrary
#Test Teardown    Quit Application
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
${textoCapturado}    Sauce Lab Back Packs
${valoritemselecionado}    $ 29.99
*** Test Cases ***
Test case name
    Open Application    ${REMOTE_URL}   platformName=${platformName}  appium:automationName=${appium:automationName}  appium:deviceName=${appium:deviceName}  appium:appPackage=${appium:appPackage}  appium:appActivity=${appium:appActivity}  appium:avd=${appium:avd}  appium:deviceOrientation=${appium:deviceOrientation}  appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}  appium:nativeWebScreenshot=${appium:nativeWebScreenshot}  appium:newCommandTimeout=${appium:newCommandTimeout}  appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}
    # xpath=//androidx.recyclerview.widget.RecyclerView[@content-desc="Displays all products of catalog"]/android.view.ViewGroup[1]/android.widget.TextView[1]

    wait until page contains    Sauce Lab Back Packs
    ${textoaComparar}=  get text    xpath=//androidx.recyclerview.widget.RecyclerView[@content-desc="Displays all products of catalog"]/android.view.ViewGroup[1]/android.widget.TextView[1]

    should be equal as strings    ${textoaComparar}    ${textoCapturado}
    log to console    """${textoaComparar}""" == """${textoCapturado}"""
    Click Element    xpath=//androidx.recyclerview.widget.RecyclerView[@content-desc="Displays all products of catalog"]/android.view.ViewGroup[1]/android.widget.TextView[1]
    ${valordoitemcapturado}=     get text    xpath=//androidx.recyclerview.widget.RecyclerView[@content-desc="Displays all products of catalog"]/android.view.ViewGroup[1]/android.widget.TextView[2]
    should be equal as strings    ${valordoitemcapturado}    ${valoritemselecionado}
    log to console    """${valordoitemcapturado}""" == """${valoritemselecionado}"""
    Click Element    xpath=//androidx.recyclerview.widget.RecyclerView[@content-desc="Displays all products of catalog"]/android.view.ViewGroup[1]/android.widget.TextView[2]

    Click Element    accessibility_id=Sauce Lab Back Packs
#    # id=com.saucelabs.mydemoapp.android:id/productTV
#    Click Element    id=com.saucelabs.mydemoapp.android:id/productTV
#    # id=com.saucelabs.mydemoapp.android:id/priceTV
#    Click Element    id=com.saucelabs.mydemoapp.android:id/priceTV
#    Swipe    811    2335    790    1128
#    # id=com.saucelabs.mydemoapp.android:id/noTV
#    Click Element    id=com.saucelabs.mydemoapp.android:id/noTV
#    # accessibility_id=Tap to add product to cart
#    Click Element    accessibility_id=Tap to add product to cart
#    # id=com.saucelabs.mydemoapp.android:id/cartIV
#    Click Element    id=com.saucelabs.mydemoapp.android:id/cartIV
#    # id=com.saucelabs.mydemoapp.android:id/titleTV
#    Click Element    id=com.saucelabs.mydemoapp.android:id/titleTV
#    # id=com.saucelabs.mydemoapp.android:id/priceTV
#    Click Element    id=com.saucelabs.mydemoapp.android:id/priceTV
#    # id=com.saucelabs.mydemoapp.android:id/noTV
#    Click Element    id=com.saucelabs.mydemoapp.android:id/noTV
#    # accessibility_id=Confirms products for checkout
#    Click Element    accessibility_id=Confirms products for checkout
#    # id=com.saucelabs.mydemoapp.android:id/nameET
#    Input Text    id=com.saucelabs.mydemoapp.android:id/nameET    bod@example.com
#    # id=com.saucelabs.mydemoapp.android:id/passwordET
#    Input Text    id=com.saucelabs.mydemoapp.android:id/passwordET    10203040
#    # accessibility_id=Tap to login with given credentials
#    Click Element    accessibility_id=Tap to login with given credentials
#    # accessibility_id=Saves user info for checkout
#    Click Element    accessibility_id=Saves user info for checkout

