*** Settings ***
Documentation   Tela de carrinho de compras
Library     AppiumLibrary
Library     BuiltIn

*** Keywords ***
Ir para carrinho de compras
    Wait until element is visible    xpath=//android.widget.RelativeLayout[@content-desc="Displays number of items in your cart"]/android.widget.ImageView
    Click Element    xpath=//android.widget.RelativeLayout[@content-desc="Displays number of items in your cart"]/android.widget.ImageView
    Wait until element is visible    id=com.saucelabs.mydemoapp.android:id/productTV
    log to console  Acessando carrinho de compras...
Validar informacoes do produto no carrinho
    [Arguments]  ${nome_produto}  ${preco_unitario}   ${quantidade}   ${qtd_itens}   ${preco_total}
    # verifica o titulo da tela
    Element should contain text     id=com.saucelabs.mydemoapp.android:id/productTV     My Cart
    # verifica o produto adicionado
    Element should contain text     id=com.saucelabs.mydemoapp.android:id/titleTV       ${nome_produto}
    # verifica o preco das unidades
    Element should contain text     id=com.saucelabs.mydemoapp.android:id/priceTV       ${preco_unitario}
    # verifica a quantidade
    Element should contain text    id=com.saucelabs.mydemoapp.android:id/noTV           ${quantidade}
    # verifica a soma dos itens
    Element should contain text     id=com.saucelabs.mydemoapp.android:id/itemsTV       ${qtd_itens}
    # verifica o valor total
    Element should contain text     id=com.saucelabs.mydemoapp.android:id/totalPriceTV  ${preco_total}
    log to console  Validando informacoes de ${nome_produto}\n${preco_unitario}\n${quantidade}\n${qtd_itens}\n${preco_total}