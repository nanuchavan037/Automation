

*** Settings ***
Documentation     A sample test case for Robot Framework
Library           RequestsLibrary
Library           collections
*** Variables ***
${url}  https://thetestingworldapi.com
    
*** Test Cases ***
TC_001_Get_Request
    
    Create Session  API_Testing    ${url}     disable_warnings=1
    ${get_reponse}   GET On Session   API_Testing  api/studentsDetails/10090825
    Log To Console    ${get_reponse.status_code}
    log To Console    ${get_reponse.content}
    Log    ${get_reponse.content}
    


*** Keywords ***
