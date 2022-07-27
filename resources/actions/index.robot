*** Settings ***
Documentation    Mapeamento das acoes da pagina index.htm
Library          SeleniumLibrary
# DSL = Domain Specific Language

*** Variables ***
${origem}   São Paolo
${destino}  New York


*** Keywords ***
Selecionar origem e destino do voo
   [Arguments]  ${origem}   ${destino}
   wait until element is enabled        name = fromPort    5
   select from list by label    name = fromPort   ${origem}
   select from list by label    name = toPort     ${destino}
   click button                 class = btn.btn-primary

Conferir o destino da semana
    click link                  link = destination of the week! The Beach!
