*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${variavel1}    teste
${variavel2}    aaa
${variavel3}    bbb



*** Keywords ***
abrir site google
    Open Browser    https://www.google.com.br/?hl=pt-BR    chrome

abrir site da globo
     Open Browser   https://www.globo.com/    chrome 

*** Test Cases ***
Cenário 1: Teste de abrir site google
    abrir site google

Cenário 2: Testar abrir site globo
    abrir site da globo
  