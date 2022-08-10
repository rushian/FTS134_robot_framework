*** Settings ***
Documentation   Tela inicial do catalogo de produtos
Library     AppiumLibrary
Library     BuiltIn

*** Keywords ***
Selecionar o produto "${nome_produto}"
    Wait Until Page Contains Element      accessibility_id=${nome_produto}
    Click Element    accessibility_id=${nome_produto}
    log to console  Produto selecionado, acessando detalhe...