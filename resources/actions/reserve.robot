*** Settings ***
Documentation    Suite description
Library          SeleniumLibrary

*** Keywords ***
Selecionar o primeiro voo da lista
    click button   class = btn.btn-small

Selecionar o voo numero "${num}"
    wait until element is enabled       css = tr:nth-child(${num}) .btn
    click button   css = tr:nth-child(${num}) .btn

Validar Mensagem do titulo Origem destino
    [Arguments]    ${origem}    ${destino}
    should contain    xpath = //h3 Flights from ${origem} to destino