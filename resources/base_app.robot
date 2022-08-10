*** Settings ***
Documentation    Suite description
Library     AppiumLibrary
Library     BuiltIn

Resource    actions_app/catalog.robot
Resource    actions_app/product.robot
Resource    actions_app/cart.robot

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
${appium:nativeWebScreenshot}       true
${appium:newCommandTimeout}         3600
${appium:connectHardwareKeyboard}   true

*** Keywords ***
Logar "${mensagem}"
    log to console  ${mensagem}
Abrir o app
    Logar "\nIniciando testes"
    Open Application    ${REMOTE_URL}   platformName=${platformName}  appium:automationName=${appium:automationName}  appium:deviceName=${appium:deviceName}  appium:appPackage=${appium:appPackage}  appium:appActivity=${appium:appActivity}  appium:avd=${appium:avd}  appium:deviceOrientation=${appium:deviceOrientation}  appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}  appium:nativeWebScreenshot=${appium:nativeWebScreenshot}  appium:newCommandTimeout=${appium:newCommandTimeout}  appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}
Fechar o app
    Logar "Encerrando aplicacao"
    Quit Application
    Close Application

