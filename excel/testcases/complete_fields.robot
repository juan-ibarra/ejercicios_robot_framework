*** Settings ***
Documentation           Completar campos con datos extraidos desde una planilla de calculo
Resource                ../resources/keywords.robot
Suite Setup              Go To Homepage
Suite Teardown           close browser

*** Test Cases ***
TC001 Completar Campos del Formulario
    Complete Form
    Register Button
    sleep  5s
