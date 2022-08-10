*** Settings ***
Documentation    Fluxo compra da camiseta
Resource    ../../resources/base_app.robot

Test Setup      Abrir o app
Test Teardown   Fechar o app

*** Variables ***
${nome_produto}     Sauce Lab Bolt T-Shirt
${preco_unitario}   $ 15.99
${quant_inicio}     1
${quantidade}       10
${qtd_itens}        10 Items
${preco_total}      $ 159.90

*** Test Cases ***
Comprar camiseta preta com estampa de raio
    Selecionar o produto "${nome_produto}"
    Validar dados do produto    ${nome_produto}   ${preco_unitario}     ${quant_inicio}
    Aumentar a quantidade do produto pra 2
    Adicionar o produto no carrinho
    Ir para carrinho de compras
    Validar informacoes do produto no carrinho     ${nome_produto}      ${preco_unitario}       ${quantidade}       ${qtd_itens}     ${preco_total}
