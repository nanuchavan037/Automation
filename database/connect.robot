*** Settings ***
Documentation     A sample test case for Robot Framework
Library           DatabaseLibrary
Library           OperatingSystem

Suite Setup        Connect To Database    pymsql    ${DBName}  ${DBUser}  ${DBPass}  ${DBHost}  ${DBPort}
Suite Teardown     Disconnect From Database

*** Variables ***

${DBName}    db
${DBUser}    root
${DBPass}    redhat
${DBHost}    localhost
${DBPort}    3306


*** Test Cases ***





*** Keywords ***


