*** Settings ***
Library     SeleniumLibrary
Library     Collections

*** Variables ***
@{lista}

*** Test Cases ***
TC001 Obtener Paises
    [Documentation]     Se extrae de la tabla los nombre de los paises
    [Tags]    table
    open browser    https://www.w3schools.com/html/html_tables.asp      chrome
    maximize browser window
    :FOR    ${index}    IN RANGE    2    8
    \    Wait Until Element Is Visible    xpath=//table[@id="customers"]//tr[${index}]/td[1]
    \    ${var} =    Get Text    xpath=//table[@id="customers"]//tr[${index}]/td[3]
    \   append to list      ${lista}    ${var}
   # \    Log To Console   \n Los elementos de la tabla son --> ${var}
    Log To Console      ********************************************************************************
    Log To Console      Listado de paises --> ${lista}
    Close browser