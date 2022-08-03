*** Settings ***
Documentation    mapeamento das acoes da pagina de confirmacao
Library     SeleniumLibrary

*** Keywords ***
Validar a mensagem de agradecimento ${mensagem}
    wait until element is visible   tag = h1    3
    element should contain  tag = h1    ${mensagem}
Validar o "${id}" da passagem
    element should contain  css = tr:nth-child(1) > td:nth-child(2)     ${id}
Validar o preco da passagem "${preco}"
    element should contain  css = tr:nth-child(2) > td:nth-child(2)     ${preco}
Validar o "${status}" da passagem
    element should contain  css = tr:nth-child(3) > td:nth-child(2)     ${status}
Validar os ultimos "${digitos}" do cartao
    element should contain  css = tr:nth-child(4) > td:nth-child(2)     ${digitos}
Validar a data de expiracao do cartao "${validade}"
    element should contain  css = tr:nth-child(5) > td:nth-child(2)     ${validade}
Validar o codigo de seguranca do cartao "${CVV}"
    element should contain  css = tr:nth-child(6) > td:nth-child(2)     ${CVV}
Validar a data da transacao "${data}"
    element should contain  css = tr:nth-child(7) > td:nth-child(2)     ${data}
Validar o json da transacao "${json_esperado}"
    element text should be  tag = pre     ${json_esperado}

