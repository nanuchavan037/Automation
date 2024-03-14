*** Settings ***
Documentation     A sample test case for Robot Framework
Library           RequestsLibrary
Library           collections
Library           JSONLibrary


*** Variables ***

${url}=  https://thetestingworldapi.com



*** Test Cases ***
TC_01_add_data_student
    Create Session   Appaccess  ${url}
    ${response}=  DELETE On Session  Appaccess   api/studentsDetails/31
    Log To Console   ${response.status_code}
    Log To Console   ${response.content}
    ${code}=  Convert To String  ${response.status_code}
    Should Be Equal  ${code}  200

 
 
*** Keywords ***
