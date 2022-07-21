*** Settings ***
Documentation    Mapeamento das acoes da pagina de confgirmacao


*** Keywords ***
Validar a mensagem de agradecimento "${mensagem}"
        element should contain     xpath = //h1     ${mensagem}

Validar o id da passagem "${id}"
        element should contain    css = tr:nth-child(1) > td:nth-child(2)       ${id}

Validar o Status da passagem "${status}"
        element should contain    css = tr:nth-child(2) > td:nth-child(2)       ${status}

Validar o preco da passagem "${preco}"
        element should contain    css = tr:nth-child(3) > td:nth-child(2)       ${preco}

Validar os ultimo 4 digitos do cartao "${final_cartao}"
        element should contain    css = tr:nth-child(4) > td:nth-child(2)       ${final_cartao}"

Validar a data de expiracao do cartao "${validade}"
        element should contain    css = tr:nth-child(5) > td:nth-child(2)       ${validade}

Validar CVV do do cartao "${cvv}"
        element should contain    css = tr:nth-child(6) > td:nth-child(2)       ${cvv}

Validar a data da transacao "${data}"
        element should contain    css = tr:nth-child(7) > td:nth-child(2)        ${data}

Validar o json da transacao "${json_esperado}"
        element text should be    tag = pre   ${json_esperado}