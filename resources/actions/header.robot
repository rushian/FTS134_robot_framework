*** Settings ***
Documentation    Mapeamento dasa acoes do cabecalho das paginas
Library     SeleniumLibrary

*** Keywords ***
Clicar em Travel the world
    wait until element is enabled   link = Travel the world     10
    click link  link = Travel the world
Clicar em Home
    wait until element is enabled   link = home     10
    click link  link = home
