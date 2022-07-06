*** Settings ***
Documentation       Fluxo de compra no site Blazedemo
#Comentario padrao do python
Library             SeleniumLibrary

#Test Setup      Iniciar
Test Teardown   Encerrar

*** Variables ***
${url}      https://www.blazedemo.com
${browser}  Chrome
${origem}   São Paolo
${destino}  New York


*** Test Cases ***
Test title
    [Tags]    SMOKE

    Dado que acesso o site Blazedemo
    Quando seleciono destino como "São Paolo" e seleciono a origem como "New York"
    E clico no botao find flights
#    Entao exibe o titulo informando a origem e o destino
#    Quando seleciono o primeiro voo
#    E preencho o nome "Juca"
#    E seleciono a bandeira "American Express"
#    E marco a opcao Remember me
#    E clico no botao "Purchase flight"
#    Entao exibe a mensagem "Thank you for your purchase today!"
#    E exibe o preco da passagem como "555 USD"

*** Keywords ***

Dado que acesso o site Blazedemo
    open browser   ${url}    ${browser}
    wait until element is visible    xpath=//h1
    wait until element contains      xpath=//h1      Welcome to the Simple Travel Agency!
    wait for condition      return document.title ==  "BlazeDemo"
Quando seleciono destino como "${origem}" e seleciono a origem como "${destino}"
    set test variable       ${origem}
    set test variable       ${destino}
    select from list by label    name = fromPort       ${origem}
    select from list by label    name = toPort       ${destino}

E clico no botao find flights
    click button    class = btn.btn-primary
Entao exibe o titulo informando a origem e o destino

#Quando seleciono o primeiro voo
#E preencho o nome "Juca"
#E seleciono a bandeira "American Express"
#E marco a opcao Remember me
#E clico no botao "Purchase flight"
#Entao exibe a mensagem "Thank you for your purchase today!"
#E exibe o preco da passagem como "555 USD"
Encerrar