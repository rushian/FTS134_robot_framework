*** Settings ***
Documentation    mapeamento das acoes da pagina de reserva


#*** Variables ***
#${num} 2

*** Keywords ***
Selecionar o primeiro voo da lista
    click button    class = btn.btn-small

Selecionar o voo numero "${num}"
    click button    css = btn btn-smalltr:nth-child(${num}) .btn



