*** Settings ***
Library     SeleniumLibrary
Resource    estrutura.robot


*** Variables ***
${input_customer.firstName}             //input[@id="customer.firstName"]
${input_customer.lastName}              //input[@id="customer.lastName"]
${input_customer.address.street}        //input[@id="customer.address.street"]
${input_customer.address.city}          //input[@id="customer.address.city"]
${textarea_customer.address.state}      //input[@id="customer.address.state"]
${input_customer.address.zipCode}       //input[@id="customer.address.zipCode"]
${input_customer.phoneNumber}           //input[@id="customer.phoneNumber"]
${input_customer.ssn}                   //input[@id="customer.ssn"]
${input_customer.username}              //input[@id="customer.username"]
${input_customer.password}              //input[@id="customer.password"]
${input_repeatedPassword}               //input[@id="repeatedPassword"]
${input_button}                         //input[@value="Register"]


*** Test Cases ***
Cenário 1: Preencher Registro
    abrir navegador
    preencher campos

Cenário 2: Registrar
    clickar em registrar


*** Keywords ***
abrir navegador
    Open Browser
    ...    https://parabank.parasoft.com/parabank/register.htm;jsessionid=3EB86AD1A40914FB8DAF2E7C6F6AA93F
    ...    chrome

preencher campos
    Input Text    ${input_customer.firstName}    Alanis
    Sleep    1s
    Input Text    ${input_customer.lastName}    Morrissette
    Sleep    1s
    Input Text    ${input_customer.address.street}    Canada Street 5555
    Sleep    1s
    Input Text    ${input_customer.address.city}    Dale City
    Sleep    1s
    Input Text    ${textarea_customer.address.state}    Vancouver
    Sleep    1s
    Input Text    ${input_customer.address.zipCode}    30306569
    Sleep    1s
    Input Text    ${input_customer.phoneNumber}    2546 89523
    Sleep    1s
    Input Text    ${input_customer.ssn}    32323232
    Sleep    1s
    Input Text    ${input_customer.username}    Alanis
    Sleep    1s
    Input Text    ${input_customer.password}    333333
    Sleep    1s
    Input Text    ${input_repeatedPassword}    333333

clickar em registrar
    Click Element    ${input_button}
    Sleep    1s
