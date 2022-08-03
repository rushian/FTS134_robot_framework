*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Library     OperatingSystem

Resource    actions/index.robot
Resource    actions/header.robot
Resource    actions/reserve.robot
Resource    actions/purchase.robot
Resource    actions/confirmation.robot

*** Variables ***
${timeout}  5
${url}      https://www.blazedemo.com
${browser}  Chrome
*** Keywords ***
Abrir navegador
    open browser    ${url}  ${browser}
Fechar navegador
    close browser

Ler json
    [Arguments] ${nome_arquivo}
    ${arquivo}  get file     ${EXECDIR}/resources/fixtures/${nome_arquivo}
    ${arquivo_json}=     Evaluate    json.loads(${arquivo})   json
    [return]    ${arquivo_json}


