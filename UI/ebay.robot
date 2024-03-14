*** Settings ***
Documentation     A sample test case for Robot Framework
Library           SeleniumLibrary

*** Variables ***
${url}    https://www.ebay.com 
${browser}    chrome


*** Test Cases ***
input search text and click search
    Open Browser     ${url}    ${browser}

    Input Text    xpath://*[@id="gh-ac"]    iphone 15
    Click Button    id:gh-btn    



    
  
*** Keywords ***