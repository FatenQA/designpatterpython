***Settings***
Documentation    code factorisé
Metadata    Author    faten
Library    SeleniumLibrary

***Variables***
${browser}    Chrome
${url}    https://www.saucedemo.com/
${champsUserName}    id=user-name    
${champsPassword}    id=password
${locked_user}    locked_out_user
${error_with_user}    problem_user
${valid_user}    standard_user
${passwordGeneral}    secret_sauce
${login}   id=login-button 

***Keywords***
Ouvrir url
    
    Open Browser    ${url}    ${browser}
login user
    [Arguments]    ${userName}    ${password}
   
    Wait Until Element Is Visible    ${champsUserName}    50 
    Input Text    ${champsUserName}    ${userName}
    Input Text    ${champsPassword}    ${password}
    Click Element    ${login}

*** Test Cases ***

se connecter avec invalide user locked
    Ouvrir url
    Login User    ${locked_user}    ${passwordGeneral}

se connecter avec problem with user
    Login User    ${error_with_user}    ${passwordGeneral}
se connecter avec valid user
    Login User    ${valid_user}    ${passwordGeneral}
    
    


    
    

    


    








