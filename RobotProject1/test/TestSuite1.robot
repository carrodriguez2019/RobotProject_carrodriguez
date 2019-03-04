*** Settings ***
Library    SeleniumLibrary    

Suite Setup    Log    I am inside Test Suite setup 
Suite Teardown   Log    I am inside Test Suite Teardown
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Test Teardown         

Default Tags    sanity       

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World...    

MySecondTest
    Log    I am inside 2nd test
    Set Tags    regression1
    Remove Tags    regression1
    
MyThirdTest
    Log    I am inside 3rd test 

MyFourTest
    Log    I am inside 4th test 
# FirsSeleniumTest
    # Open Browser    https:google.com    chrome 
    # Set Browser Implicit Wait    5
    # Input Text      name=q              Automation step by step
    # Press Keys    name=q    ENTER   
    # #Click Button    name=btnK    
    # Sleep    2    
    # Close Browser
    # Log    Test Completed 
    
#  SampleLoginTest
    # [Documentation]    This is sample login test
    # Open Browser      ${URL}     Chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # Click Element     id = welcome
    # Click Element     link = Logout    
    # Close Browser
    # Log               Test completed          
    # Log               This test was executed by %{username} on %{os}
   
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LGOINDATA}      username=Admin    password=admin123

*** Keywords ***
LoginKW
    Input Text        id = txtUsername    @{CREDENTIALS}[0]
    Input Password    id = txtPassword    &{LGOINDATA}[password]      
    Click Button      id = btnLogin