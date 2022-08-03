*** Settings ***
Library         AppiumLibrary
Test Setup      Open Application    ${REMOTE_URL}   platformName=${platformName}  appium:automationName=${appium:automationName}  appium:deviceName=${appium:deviceName}  appium:appPackage=${appium:appPackage}  appium:appActivity=${appium:appActivity}  appium:avd=${appium:avd}  appium:deviceOrientation=${appium:deviceOrientation}  appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}  appium:nativeWebScreenshot=${appium:nativeWebScreenshot}  appium:newCommandTimeout=${appium:newCommandTimeout}  appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}
Test Teardown   Quit Application
Suite Teardown  Close Application


*** Variables ***
${REMOTE_URL}   http://127.0.0.1:4723/wd/hub
${platformName}    Android
${appium:automationName}    uiautomator2
${appium:deviceName}    emulator-5556
${appium:appPackage}    com.saucelabs.mydemoapp.android
${appium:appActivity}    com.saucelabs.mydemoapp.android.view.activities.SplashActivity
${appium:avd}    Pixel2RUFUSb
${appium:deviceOrientation}    portrait
${appium:ensureWebviewsHavePages}   true
${appium:nativeWebScreenshot}    true
${appium:newCommandTimeout}    3600
${appium:connectHardwareKeyboard}    true

*** Test Cases ***
Adiciona camiseta no carrinho
    Espere "Sauce Lab Bolt T-Shirt"
    # accessibility_id=Sauce Lab Bolt T-Shirt
    Click Element    accessibility_id=Sauce Lab Bolt T-Shirt
    # xpath=//android.widget.FrameLayout[@content-desc="Container for fragments"]/android.widget.ScrollView/android.view.ViewGroup/android.widget.TextView
    Click Element    xpath=//android.widget.FrameLayout[@content-desc="Container for fragments"]/android.widget.ScrollView/android.view.ViewGroup/android.widget.TextView
    Swipe    489    1149    453    588
    # xpath=//android.widget.FrameLayout[@content-desc="Container for fragments"]/android.widget.ScrollView/android.view.ViewGroup/android.widget.TextView
    Click Element    xpath=//android.widget.FrameLayout[@content-desc="Container for fragments"]/android.widget.ScrollView/android.view.ViewGroup/android.widget.TextView
    # id=com.saucelabs.mydemoapp.android:id/priceTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/priceTV
    # id=com.saucelabs.mydemoapp.android:id/start5IV
    Click Element    id=com.saucelabs.mydemoapp.android:id/start5IV
    #sleep   20
    Espere ate ver "Closes review dialog"
    # accessibility id=Closes review dialog
    Click Element    accessibility_id=Closes review dialog
    # id=com.saucelabs.mydemoapp.android:id/noTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/noTV
    # accessibility id=Increase item quantity
    Click Element    accessibility_id=Increase item quantity
    # id=com.saucelabs.mydemoapp.android:id/noTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/noTV
    # accessibility id=Tap to add product to cart
    Espere "Tap to add product to cart"
    Click Element    accessibility_id=Tap to add product to cart
    # xpath=//android.widget.RelativeLayout[@content-desc="Displays number of items in your cart"]/android.widget.ImageView
    Click Element    xpath=//android.widget.RelativeLayout[@content-desc="Displays number of items in your cart"]/android.widget.ImageView
    # id=com.saucelabs.mydemoapp.android:id/productTV
    Espere ver "id" "com.saucelabs.mydemoapp.android:id/productTV"
    Click Element    id=com.saucelabs.mydemoapp.android:id/productTV
    # id=com.saucelabs.mydemoapp.android:id/titleTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/titleTV
    # id=com.saucelabs.mydemoapp.android:id/priceTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/priceTV
    # accessibility id=Displays color of selected product
    Click Element    accessibility_id=Displays color of selected product
    # id=com.saucelabs.mydemoapp.android:id/noTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/noTV
    # id=com.saucelabs.mydemoapp.android:id/itemsTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/itemsTV
    # id=com.saucelabs.mydemoapp.android:id/totalPriceTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/totalPriceTV
    #aguardar tempo para conferir a tela
    sleep   5

*** Keywords ***
Espere "${elemento}"
    Wait Until Page Contains Element      accessibility_id=${elemento}
Espere ate ver "${elemento}"
    Wait until element is visible    accessibility_id=${elemento}
Espere ver "${locator}" "${elemento}"
    Wait until element is visible    ${locator}=${elemento}
