*** Settings ***
Documentation    mapeamento das acoes da pagina de reserva
Library     SeleniumLibrary


#*** Variables ***
#${num} 2

*** Keywords ***
Selecionar o primeiro voo da lista
    wait until element is enabled   class = btn.btn-small   10
    click button    class = btn.btn-small

Selecionar o voo numero "${num}"
    wait until element is enabled
    click button    css = btn btn-smalltr:nth-child(${num}) .btn



