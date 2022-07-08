*** Settings ***
Documentation    Mapeamento das acoes da pagina index.html


# DSL
*** Keywords ***

Selecionar origem e destino do voo
    [Arguments]    ${origem}    ${destino}
    select from list by label    id = fromPort     ${origem}
    select from list by label    id = toPort       ${destino}
    click button                 class = btn.btnprimary

Conferir o destino da semana
    click link                  list = destination of the week! The Beach!