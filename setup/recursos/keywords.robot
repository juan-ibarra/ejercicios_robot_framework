*** Variables ***
${URL}          http://thetestingworld.com/testings/index.php
${browser}     chrome
# locators
${input_username}           name=fld_username
${input_email}              name=fld_email
${input_password}           name=fld_password
${input_phone}              name=phone
${radio_address_type}      add_type
${select_genero}            name=sex
${select_country}           id=countryId
${select_state}             id=stateId
${checkbox_terms}           name=terms

*** Keywords ***
Ingresar Al Sitio
    Open Browser                    ${URL}          ${browser}
    Maximize Browser Window
    Log                             Inicio de la Suite de pruebas

Cerrar Navegador
    ${titulo}=   Get Title
    Log                             Titulo de la pagina: ${titulo}
    Log                             Fin de la Suite de pruebas
    Close Browser

Completar Campos de Texto
    [Arguments]                   ${user}     ${pass}       ${email}    ${phone}
    Input Text                      ${input_username}                ${user}
    Input Text                      ${input_email}                   ${email}
    Input Text                      ${input_password}                ${pass}
    Input Text                      ${input_phone}                   ${phone}

Seleccionar Direccion
    [Arguments]                   ${tipo}
    Select Radio Button             ${radio_address_type}             ${tipo}

Seleccionar Genero
    [Arguments]                   ${genero}
    Select From List By Value       ${select_genero}                ${genero}

Seleccionar Pais
    [Arguments]                   ${pais}
    Select From List By Label       ${select_country}               ${pais}

Seleccionar Provincia
    [Arguments]                   ${provincia}
    Select From List By Label       ${select_state}                   ${provincia}

Aceptar los Terminos
    Select Checkbox                 ${checkbox_terms}