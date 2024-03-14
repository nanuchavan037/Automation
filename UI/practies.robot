*** Settings ***
Documentation     A sample test case for Robot Framework
Library           SeleniumLibrary

*** Variables ***
${browser}    chrome


*** Test Cases ***
TC001
    Open Browser     https://rahulshettyacademy.com/AutomationPractice/   ${browser}
    Maximize Browser Window
    # Select Radio Button    radioButton    radio1
    # sleep     1
    
    # Input Text    id:autocomplete    India

    # Select From List By Value    dropdown-class-example    option1
    # sleep     3

    # Select Checkbox    checkBoxOption3

    # sleep    4
   

    # # Open Browser    https://www.qaclickacademy.com/    chrome
    # # Maximize Browser Window
    # # Sleep     3
    
   


    # # Click Link   id:opentab

    # # Switch Window    Practice Page

    # # # Close Window

    # # Sleep     5

    # # Input Text    id:name    nanu
   
    # # Click Button    xpath://*[@id="alertbtn"]
    # # Sleep    3
    # # Handle Alert    accept

    # # Sleep  3

    # # Click Button    xpath://*[@id="confirmbtn"]
    
    # # to press ok  button
    # # Handle Alert    accept

    # # to press cancel button 
    # #  Handle Alert     dismiss


    # # verify text on alert window
    # # Alert Should Be Present   Hello nanu, Are you sure you want to confirm?

    # Sleep    5

    # # switch browser 
    # Go To    https://www.google.com
    # Sleep     3
    # # back to privous page
    # Go Back    

    # Sleep    3

     
    # Capture Element Screenshot    xpath:/html/body/header/a[1]/img        sc.png

    # Sleep    3

    # Capture Page Screenshot        website.png

    Sleep    5
    

    # To scroll down 

    # Execute Javascript    window.scrollTo(0,1150)
    # Scroll Element Into View        xpath:
    # Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    # Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)    #scroll to Top

    # To right click on button

    Open Context Menu    xpath://input[@id='confirmbtn']
    Sleep    2

    Open Context Menu    xpath://*[@id="show-textbox"]

    Sleep     2


    Double Click Element    xpath://input[@id='confirmbtn']



    
  
*** Keywords ***