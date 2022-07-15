*** Settings ***
Documentation       Teste suit


*** Keywords ***
Selecionar o primeiro voo da lista
        click button    class = btn.btn-small

selecionar o voo numero "${num}"
        click button    css = tr:nth-child(${num}) .btn