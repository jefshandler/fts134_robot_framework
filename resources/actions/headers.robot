*** Settings ***
Documentation    Mapeamento das acoes do cabeçalho pagina index.html
Library          SeleniumLibrary

# DSL
*** Keywords ***
Clicar em Travel the World
    wait until element is enabled    link = Travel The World    2
    click link                       link = Travel The World

Clicar em Home
    wait until element is enabled    link = home    2
    click link                       link = home

Conferir o destino da semana
    click link                      list = destination of the week! The Beach!