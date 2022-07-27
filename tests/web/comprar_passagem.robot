*** Settings ***
Documentation   Teste do fluxo de campra (e2e)


Resource    ../../resources/base.robot
#Resource    ../../resources/actions/index.robot
#Resource    ../../resources/actions/reserve.robot
#Resource    ../../resources/actions/purchase.robot
#Resource    ../../resources/actions/confirmation.robot


Test Setup      Abrir Navegador
Test Teardown   Fechar Navegador

*** Test Cases ***
Comprar primeira passagem para o destino
    [Tags]    compra
    Selecionar origem e destino do voo

    Selecionar o primeiro voo da lista
    Preencher nome "Luke"
    Selecionar bandeira "Visa"
    Clicar em lembrar de mim
    Clicar no botao purchase
    Validar a mensagem de agradecimento "Thank you for your purchase today!"
    Validar o preco da passagem "555 USD"

Comprar terceira da lista passagem para o destino
    [Tags]    compra
    Selecionar origem e destino do voo
    Selecionar o voo numero "3"
#    Selecionar o primeiro voo da lista
    Preencher nome "Luke"
    Selecionar bandeira "Visa"
    Clicar em lembrar de mim
    Clicar no botao purchase
    Validar a mensagem de agradecimento "Thank you for your purchase today!"
    Validar o preco da passagem "555 USD"

