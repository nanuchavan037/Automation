*** Settings ***
Documentation     A sample test case for Robot Framework
Library           SeleniumLibrary

*** Variables ***
${url}    https://www.google.com 
${browser}    chrome
*** Test Cases ***
Google Search
    insidegoogle
  
*** Keywords ***

insidegoogle
    Open Browser    ${url}    ${browser} 
    Maximize Browser Window
    Sleep    10
    Close Browser
