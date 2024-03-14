*** Settings ***
Documentation     A sample test case for Robot Framework
Library           SeleniumLibrary

*** Variables ***
${url}    https://dineshvelhal.github.io/testautomation-playground/login.html
${browser}    chrome
*** Test Cases ***
order pizza's Online
    open website
    Set Selenium Speed    1
    login
    Select medium size pizza, Veggie Delight Flavor,Buffalo Sause,And Greenlive+Tomatoes Topings
    set the quantity to 5 and add to cart
    Success message
    Print successful massage
*** Keywords ***

open website     
    Open Browser   ${url}  ${browser}  
      

login 
    Click Element  id:user
    Input Text      id:user     admin
    sleep  1
    Click Element  id:password
    Input Password  id:password  admin
    Sleep  1
    Click Button  id:login 
    Sleep  1
Select medium size pizza, Veggie Delight Flavor,Buffalo Sause,And Greenlive+Tomatoes Topings
 
    Wait Until Element Is Visible  css:h3
    Click Element        id:rad_medium
    Select From List By Label           id:select_flavor     Supreme
    Click Element      id:rad_buffalo
    Click Element      id:green_olive
    sleep     0.5

set the quantity to 5 and add to cart
    
    Input Text     id:quantity    5
    Click Button    id:submit_button
    sleep  2

Success message
    Sleep   0.5
    Wait Until Element Is Visible    id:added_message
    Element Text Should Be    id:added_message      Pizza added to the cart!

Print successful massage
    ${massage}=  Get Text    id:added_message
    Log To Console    ${massage}
    log            ${massage}
    sleep     3
