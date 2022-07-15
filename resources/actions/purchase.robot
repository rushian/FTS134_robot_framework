*** Settings ***
Documentation    mapeamento das acoes da pagina de compra

*** Keywords ***
Preencher nome "${nome}"
    input text  id = inputname  ${nome}

Preencher endereco "${endereco}"
    input text  id = address      ${endereco}
Preencher cidade "${cidade}"
    input text  id = city      ${cidade}
Preencher uf "${uf}"
    input text  id = state      ${uf}
Preencher cep "${cep}"
    input text  id = zipCode   ${cep}

Selecionar bandeira "${bandeira}"
    select from list by label    id = cardType   ${bandeira}

Preencher "${mes}" de validade do cartao
    input text  id = creditCardMonth   ${mes}
Preencher "${ano}" de validade do cartao
    input text  id = creditCardYear   ${ano}

Preencher nome no cartao "${titular}"
    input text  id = nameOnCard ${titular}

Clicar em lembrar de mim
    checkbox should be selected     id = rememberMe

