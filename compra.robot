*** Settings ***
Documentation       Fluxo de compra no site Blazedemo
#Comentario padrao do python
Library             SeleniumLibrary

Test Setup      log to console  \n===== INICIO DOS TESTES ======\n
Test Teardown   Encerrar

*** Variables ***
${url}      https://www.blazedemo.com
${browser}  Chrome


*** Test Cases ***
Compra de Passagem
    [Tags]    E2E   Regression  SMOKE
    Dado que acesso o site Blazedemo
    Quando seleciono destino como "New York" e seleciono a origem como "São Paolo"
    E clico no botao find flights
    Entao exibe o titulo informando a origem e o destino
    Quando seleciono o primeiro voo
    E preencho o nome "Juca"
    E seleciono a bandeira "American Express"
    E marco a opcao Remember me
    E clico no botao "Purchase flight"
    Entao exibe a mensagem "Thank you for your purchase today!"
    E exibe o preco da passagem como "555 USD"

*** Keywords ***
Dado que acesso o site Blazedemo
    open browser   ${url}    ${browser}
    wait until element is visible    xpath = //h1
    wait until element contains     xpath = //h1      Welcome to the Simple Travel Agency!
    wait for condition        return document.title == "BlazeDemo"
Quando seleciono destino como "${destino}" e seleciono a origem como "${origem}"
    set test variable   ${destino}
    set test variable   ${origem}
    select from list by label   name = fromPort     ${origem}
    select from list by label   name = toPort     ${destino}

E clico no botao find flights
    click button   class = btn.btn-primary
Entao exibe o titulo informando a origem e o destino
    element should contain  xpath = //h3    Flights from ${origem} to ${destino}:
Quando seleciono o primeiro voo
    click button    class = btn.btn-small
E preencho o nome "Juca"
    input text  inputName   Juca
E seleciono a bandeira "American Express"
    select from list by label   name = cardType     American Express
E marco a opcao Remember me
    select checkbox     id = rememberMe
    sleep       4000ms
E clico no botao "Purchase flight"
    click button   class = btn.btn-primary
Entao exibe a mensagem "Thank you for your purchase today!"
    element should contain  xpath = //h1    Thank you for your purchase today!
E exibe o preco da passagem como "555 USD"
    element should contain   xpath=//table[@class="table"]//tr[td[.="Amount"]]//td[2]    555 USD
Encerrar
    sleep       4000ms
    close browser