

*** Settings ***
Documentation     A sample test case for Robot Framework
Library           RequestsLibrary
Library           collections
Library           JSONLibrary


*** Variables ***

${url}  https://thetestingworldapi.com
${student_id}  10090744


*** Test Cases ***
TC_01_fetch_student_id
    Create Session  Data   ${url}
    ${get_reponse}=   GET On Session   Data    api/studentsDetails/${student_id}
    Log To Console    ${get_reponse.status_code}
    Log To Console    ${get_reponse.content}
    ${status_code}=  Convert To String  ${get_reponse.status_code}
    Should Be Equal  ${status_code}  200

*** Keywords ***
