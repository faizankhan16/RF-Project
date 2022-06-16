*** Settings ***

Library           SeleniumLibrary       timeout=30
Library           JSONLibrary
Library           Collections
Library           OperatingSystem

*** Variables ***

*** Keywords ***

#Given------------------------------------------------------------------------------------------------------------
  
a gallery page

  Open Browser        ${Gallery_url}           ${browser}        
  Set Window Size	    1920	 1080

the video page

  ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
  Call Method    ${chrome_options}      add_argument        headless
  Call Method    ${chrome_options}      add_argument        no-sandbox
  Call Method    ${chrome_options}      add_argument        --disable-extensions
  Call Method    ${chrome_options}      add_argument        --disable-gpu
  Call Method    ${chrome_options}      add_argument        disable-dev-shm-usage
  ${options}=    Call Method            ${chrome_options}   to_capabilities
  Open Browser   ${Video_Url}            ${browser}          desired_capabilities=${options}
  Set Window Size	   1920	 1080
  Wait Until Page Contains             Robot Test - All Content 

the calendar page

  ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
  Call Method    ${chrome_options}      add_argument        headless
  Call Method    ${chrome_options}      add_argument        no-sandbox
  Call Method    ${chrome_options}      add_argument        --disable-extensions
  Call Method    ${chrome_options}      add_argument        --disable-gpu
  Call Method    ${chrome_options}      add_argument        disable-dev-shm-usage
  ${options}=    Call Method            ${chrome_options}   to_capabilities
  Open Browser        ${Calendar_Url}           ${browser}        
  Set Window Size	    1920	 1080
  Wait Until Page Contains Element              ${Calendar_icon}

a demo component page

  ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
  Call Method    ${chrome_options}      add_argument        headless
  Call Method    ${chrome_options}      add_argument        no-sandbox
  Call Method    ${chrome_options}      add_argument        --disable-extensions
  Call Method    ${chrome_options}      add_argument        --disable-gpu
  Call Method    ${chrome_options}      add_argument        disable-dev-shm-usage
  ${options}=    Call Method            ${chrome_options}   to_capabilities
  Open Browser        ${Material_Demo_Url}      ${browser}        
  Set Window Size	    1920	 1080
  Wait Until Page Contains                      CodeSandbox