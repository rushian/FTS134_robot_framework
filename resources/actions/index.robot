*** Settings ***
Documentation    Mapeamento das acoes possiveis da pagina index.htm
Library     SeleniumLibrary

*** Variables ***
${origem}   São Paolo
${destino}  New York

#DSL = Domain Specific Language
*** Keywords ***
Selecionar origem e destino do voo
    #[Arguments]     ${origem}   ${destino}
    wait until element is enabled   name=fromPort   10
    select from list by label   name=fromPort     ${origem}
    select from list by label   name=toPort     ${destino}
    click button    class = btn.btn-primary

Conferir o destino da semana
    wait until element is enabled   link = destination of the week! The Beach!   10
    click link  link = destination of the week! The Beach!