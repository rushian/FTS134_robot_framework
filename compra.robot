*** Settings ***
Documentation    Fluxo de compra no site Blazedemo
#Comentario padrao do python

*** Test Cases ***
Test title
    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test