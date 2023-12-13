*** Settings ***
Library     SeleniumLibrary


*** Variables ***
# Dados do teste
${nomeDaMusica}         Jungkook Hate You Official

# variáveis de configuração
${URL}                  https://www.youtube.com/
${Browser}              chrome

# Elementos
${input_Pesquisa}       //input[@id="search"]
${Button_Pesquisa}      //button[@id="search-icon-legacy"]
${Primeiro}             (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${prova}                //span[contains(text(),"Compartilhar")] [1]


*** Test Cases ***
Cenário 1: Executar video no site do youtube
    [Tags]    regressivo
    Dado que eu acesso o youtube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o video é executado


*** Keywords ***
Dado que eu acesso o youtube
    Open Browser    ${URL}    ${Browser}

Quando digito o nome da música
    Input Text    ${input_Pesquisa}    ${nomeDaMusica}

E clico no botão buscar
    Click Element    ${Button_Pesquisa}

E clico na primeira opção da lista
    Wait Until Element Is Visible    ${Primeiro}    20
    Click Element    ${Primeiro}

Então o video é executado
    Wait Until Element Is Visible    ${prova}    20
    Element Should Be Visible    ${prova}
    Sleep    1s
