*** Settings ***
Documentation     A sample test case for Robot Framework
Library           RequestsLibrary
Library           collections
Library           JSONLibrary


*** Variables ***

${url}=  https://thetestingworldapi.com



*** Test Cases ***
TC_01_add_data_student
    Create Session   AddData  ${url}
    &{body}=  Create Dictionary  first_name=test middle_name=Aer last_name=world date_of_birth=12/2/2003
    ${response}=   POST On Session  AddData    /api/studentsDetails/   json=${body}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

 
 
*** Keywords ***
