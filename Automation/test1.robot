*** Settings ***
Documentation     A sample test case for Robot Framework
Library           SeleniumLibrary

*** Variables ***
${url}    https://www.google.com/  
${browser}    chrome
*** Test Cases ***
InputBox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    xpath://*[@id="APjFqb"]    instagram
    Click Button   xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[2]/div[4]/div[6]/center/input[1]
    Clear Element Text    xpath://*[@id="APjFqb"]
    Input Text    xpath://*[@id="APjFqb"]   facebook
    Click Button    xpath://*[@id="tsf"]/div[1]/div[1]/div[3]/button
    Sleep   99  sec

  
*** Keywords ***


