*** Settings ***
Library         AppiumLibrary
Test Setup      Open Application    ${REMOTE_URL}   platformName=${platformName}  appium:automationName=${appium:automationName}  appium:deviceName=${appium:deviceName}  appium:appPackage=${appium:appPackage}  appium:appActivity=${appium:appActivity}  appium:avd=${appium:avd}  appium:deviceOrientation=${appium:deviceOrientation}  appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}  appium:nativeWebScreenshot=${appium:nativeWebScreenshot}  appium:newCommandTimeout=${appium:newCommandTimeout}  appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}
Test Teardown   Quit Application
Suite Teardown  Close Application


*** Variables ***
#${Sauce_Username}   oauth-luciano.ivec-431ec
#${Sauce_Access_Key}     90239964-f3e8-43ef-bab3-5e56b496ba6c
#java${REMOTE_URL}       http://${Sauce_Username}:${Sauce_Access_Key}@ondemand.us-west-1.saucelabs.com:80/wd/hub
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
    Adiciona camiseta no carrinho

Clica no carrinho
    Adiciona camiseta no carrinho
    # clicar no icone do carrinho de compra xpath=//android.widget.RelativeLayout[@content-desc="Displays number of items in your cart"]/android.widget.ImageView
    Click Element    xpath=//android.widget.RelativeLayout[@content-desc="Displays number of items in your cart"]/android.widget.ImageView
    # id=com.saucelabs.mydemoapp.android:id/productTV
    Espere ver "id" "com.saucelabs.mydemoapp.android:id/productTV"
    # verifica o titulo da pagina
    Element should contain text     id=com.saucelabs.mydemoapp.android:id/productTV     My Cart
    # verifica o produto adicionado
    Element should contain text     id=com.saucelabs.mydemoapp.android:id/titleTV  Sauce Lab Bolt T-Shirt
    # verifica o preco das unidades
    Element should contain text     id=com.saucelabs.mydemoapp.android:id/priceTV  $ 15.99
    # verifica a quantidade
    Element should contain text    id=com.saucelabs.mydemoapp.android:id/noTV   10
    # verifica a soma dos itens
    Element should contain text     id=com.saucelabs.mydemoapp.android:id/itemsTV   10 Items
    # verifica o valor total
    Element should contain text     id=com.saucelabs.mydemoapp.android:id/totalPriceTV  $ 159.90
    #aguardar tempo para conferir a tela
    sleep   10

*** Keywords ***
Espere "${elemento}"
    Wait Until Page Contains Element      accessibility_id=${elemento}
Espere ate ver "${elemento}"
    Wait until element is visible    accessibility_id=${elemento}
Espere ver "${locator}" "${elemento}"
    Wait until element is visible    ${locator}=${elemento}
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
    Element should contain text    id=com.saucelabs.mydemoapp.android:id/priceTV  $ 15.99
    # id=com.saucelabs.mydemoapp.android:id/start5IV
    Click Element    id=com.saucelabs.mydemoapp.android:id/start5IV
    #sleep   20
    Espere ate ver "Closes review dialog"
    # accessibility id=Closes review dialog
    Click Element    accessibility_id=Closes review dialog
    # id=com.saucelabs.mydemoapp.android:id/noTV
    Element should contain text    id=com.saucelabs.mydemoapp.android:id/noTV   1
    # accessibility id=Increase item quantity
    Click Element    accessibility_id=Increase item quantity
    # id=com.saucelabs.mydemoapp.android:id/noTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/noTV
    Espere "Tap to add product to cart"
    # accessibility id=Tap to add product to cart
    Click Element    accessibility_id=Tap to add product to cart