*** Settings ***
Documentation    mapeamento das acoes da pagina de pagamento



*** Keywords ***
Preencher nome "${nome}"
        input text    id = inputName    ${nome}

Preencher nome "${endereco}"
        input text    id = address    ${endereco}

Preencher cidade "${city}"
        input text    id = city    ${city}

Preencher uf "${stade}"
        input text    id = state    ${stade}

Preencher cep "${cep}"
        input text    id = zipCode    ${cep}

Preencher bandeira "${bandeira}"
        select from list by label       id = cardType       ${bandeira}

Preencher mes de validade do cartao "${mes}"
        input text    id = creditCardmonth    ${mes}

Preencher ano de validade do cartao "${ano}"
        input text    id = creditCardYear    ${ano}

Preencher nome do cartao "${titular}"
        input text    id = nameOnCard    ${titular}

Clicar em Lembrar de mim
        checkbox should be selected    id = rememberMe