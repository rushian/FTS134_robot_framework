*** Settings ***
Documentation    Tela do produto
Library     AppiumLibrary
Library     BuiltIn

*** Keywords ***
Validar dados do produto
    [Arguments]     ${nome_produto}  ${preco_produto}    ${quant_produto}
    log to console  Validando dados do produto ${nome_produto} ${preco_produto} ${quant_produto}
    Wait Until Page Contains Element      id=com.saucelabs.mydemoapp.android:id/productTV
    Element should contain text     id=com.saucelabs.mydemoapp.android:id/productTV     ${nome_produto}
    Swipe    200    1150    200    450
    log to console  Scrollar e validar quantidade...
    Wait Until Page Contains Element    id=com.saucelabs.mydemoapp.android:id/noTV
    Element should contain text         id=com.saucelabs.mydemoapp.android:id/noTV       ${quant_produto}
    Element should contain text         id=com.saucelabs.mydemoapp.android:id/priceTV    ${preco_produto}

Aumentar a quantidade do produto pra 2
    log to console  Aumentando a quantidade de camisetas pra 2 (10)
    Click Element    accessibility_id=Increase item quantity

Adicionar o produto no carrinho
    log to console  Adicionando produto ao carrinho...
    Wait Until Page Contains Element    accessibility_id=Tap to add product to cart
    # accessibility id=Tap to add product to cart
    Click Element    accessibility_id=Tap to add product to cart