*** Settings ***
Library             SeleniumLibrary
Library             ExcelLibrary

*** Variables ***
${url}                     https://es-la.facebook.com/
${browser}                chrome
# web elements
${logo}                     xpath=//a/i/u[text() = "Facebook"]
${btn_new_account}         name=websubmit
${input_name}               name=firstname
${input_lastname}          name=lastname
${input_email}             name=reg_email__
${input_password}          name=reg_passwd__

*** Keywords ***
Go To Homepage
    open browser                        ${url}      ${browser}
    maximize browser window
    wait until page contains element    ${logo}

Register Button
    click element                       ${btn_new_account}

Complete Form
    ${nombre}  ${apellido}  ${email}  ${password}   Get User Data
    input text              ${input_name}       ${nombre}
    input text              ${input_lastname}   ${apellido}
    input text              ${input_email}      ${email}
    input text              ${input_password}   ${password}

Get User Data
    open excel document                 data/data.xlsx       users1
    ${name}=        read excel cell         1   1
    ${lastname}=     read excel cell       1   2
    ${email}=       read excel cell        1   3
    ${password}=    read excel cell        1   4
    [Return]        ${name}  ${lastname}  ${email}  ${password}
    close all excel documents