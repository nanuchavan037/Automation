*** Settings ***
Documentation     A sample test case for Robot Framework
Library           RequestsLibrary
Library           collections
Library           JSONLibrary


*** Variables ***

${url}=  https://thetestingworldapi.com


*** Test Cases ***
TC_05_add_data_student
    Create Session   AddData  ${url}
    &{body}=  Create Dictionary  id=10090924 first_name=T  middle_name=A  last_name=w  date_of_birth=12/2/2003
    ${response}=   PUT On Session  AddData    api/studentsDetails/  json=${body}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    # ${response1}=  GET On Session  AdddDat  api/studentsDetails/10090923
    # Log To Console  ${response1}
 
 
*** Keywords ***