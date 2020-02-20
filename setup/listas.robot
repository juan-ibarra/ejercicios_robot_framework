*** Settings ***
Library         Selenium2Library
Resource        recursos/keywords.robot

*** Variables ***
${browser}          chrome
${homepage}         http://automationpractice.com/index.php
# Esto es solo un ejemplo de listas con RF
@{nombresDeContenedores}     //*[@id="homefeatured"]/li[1]/div/div[2]/h5/a
...                             //*[@id="homefeatured"]/li[2]/div/div[2]/h5/a
...                             //*[@id="homefeatured"]/li[3]/div/div[2]/h5/a
...                             //*[@id="homefeatured"]/li[4]/div/div[2]/h5/a
...                             //*[@id="homefeatured"]/li[5]/div/div[2]/h5/a
...                             //*[@id="homefeatured"]/li[6]/div/div[2]/h5/a
...                             //*[@id="homefeatured"]/li[7]/div/div[2]/h5/a
# Ejemplo de diccionario
&{usuario}                  user=Nahual IT
...                         pass=123456
...                         tel=6546546546

*** Keywords ***
Open Homepage
    Open Browser    ${homepage}      ${browser}
    Maximize Browser Window

*** Test Cases ***
C001 Hacer Clic en Contenedores
    [Tags]                  lista
    Open Homepage
    ${x}=       Set Variable    0
    :FOR    ${producto}   IN      @{nombresDeContenedores}
    \   wait until keyword succeeds     10x   2s    Click Element       xpath=${producto}
    \   Wait Until Element Is Visible   xpath=//*[@id="bigpic"]
    \   Click Element       xpath=//*[@id="header_logo"]/a/img
    \   ${x}=            Evaluate     ${x} + 1
    \   log to console      elemento numero: ${x}
    log to console      +++++ Test Case completado exitosamente +++++
    Close Browser

Prueba Diccionario
    [Tags]          dict
    Log To Console      &{usuario}[user]
    Log To Console      &{usuario}[pass]