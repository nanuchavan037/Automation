*** Settings ***
Documentation     A sample test case for Robot Framework
Library           SeleniumLibrary

*** Variables ***
${url}    https://www.Amazon.in
${browser}    chrome
*** Test Cases ***
Google Search
    insidegoogle
    
  
*** Keywords ***

insidegoogle
    
    Open Browser    ${url}  ${browser} 
    Maximize Browser Window
    sleep  10
    
    

 