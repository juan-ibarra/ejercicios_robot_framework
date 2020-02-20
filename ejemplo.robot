***Settings***
Resource        Recursos.robot

***Variables***
${ObtenerTituloDePagina}
#${URL}              http://automationpractice.com/index.php
#${Navegador}        chrome

***Keywords***
Verificar Ingreso a Pagina
    ${ObtenerTituloDePagina}     Get Title
    ${ObtenerURL}                Get Location
    Should Be Equal     ${ObtenerTituloDePagina}    YouTube
    Log To Console      Esta navegando por: ${ObtenerTituloDePagina}
    Log To Console       La URL Es: ${ObtenerURL}

***Test Cases***
Caso: Ingresar a la Pagina
    Abrir Sitio
    Sleep   1s
    Verificar Ingreso a Pagina
    Ingresar Busqueda   Rammsteim
    #Close Browser