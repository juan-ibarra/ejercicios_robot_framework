*** Settings ***
Documentation       Suite de casos de pruebas con setup y teardown
Library             SeleniumLibrary
Library
Resource            recursos/keywords.robot
Resource            data/data.robot
Suite Setup         Ingresar Al Sitio
Suite Teardown      Cerrar Navegador
Test Setup          Log      inicio del Test Case
Test Teardown       Log      FIn del test Case


*** Test Cases ***
001 - Completar Campos De Texto
    [Documentation]                 Se completan los campos de texto en el formulario
    [Tags]                          001     smoke
    Completar Campos de Texto        &{usuario}[nombre]     &{usuario}[nickname]     &{usuario}[email]     &{usuario}[telefono]
    Log                             se completaron los campos de texto
    Sleep   3s

002 - Seleccionar Radio Button
    [Documentation]                 Se completan los radio-button y checkbox
    [Tags]                          002     smoke
    Seleccionar Direccion            home
    Aceptar los Terminos
    ${url}=     Get Location
    Log      usted esta navegando por: ${url}
    Sleep   3s

003 - Seleccionar Opcion Dropdown
    [Documentation]                 Se completan los dropdown
    [Tags]                          003     smoke
    Seleccionar Genero               1
    Seleccionar Pais                 Argentina
    Sleep   4s
    Seleccionar Provincia            Jujuy
    #Click Element                           xpath=//input[@value='Sign up']
    Sleep   5s
