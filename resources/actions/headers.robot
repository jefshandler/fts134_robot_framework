*** Settings ***
Documentation    Mapeamento das acoes do cabeçalho pagina index.html


# DSL
*** Keywords ***
Clicar em Travel the World
    click link      link = Travel The World

Clicar em Home
    click link                  link = home

Conferir o destino da semana
    click link                  list = destination of the week! The Beach!