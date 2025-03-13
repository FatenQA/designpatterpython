*** Settings ***
Documentation    cette suite de test traite l'epic avec connexion valide et invalide
Metadata    Author    Faten
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://www.saucedemo.com/
${champsUserName}    id=user-name    
${champsPassword}    id=password
${locked_user}    locked_out_user
${error_with_user}    problem_user
${valid_user}    standard_user
${password}    secret_sauce
${login}   id=login-button 

*** Keywords ***
Ouvrir le navigateur
    Open Browser    ${url}    ${browser}
Remplir le champ user_Name locked
    Wait Until Element Is Visible    ${champsUserName}
    Input Text    ${champsUserName}    ${locked_user}
Remplir le champ user_Name problem with user
    Wait Until Element Is Visible    ${champsUserName}
    Input Text    ${champsUserName}    ${error_with_user}
Remplir le champ user_Name with valid_user
    Wait Until Element Is Visible    ${champsUserName}
    Input Text    ${champsUserName}   ${valid_user}


Remplir le champ password
    Input Text    ${champsPassword}        ${password}
cliquer sur le bouton login
    Click Element    ${login}
# nom du cas de test
*** Test Cases ***
se connecter avec user locked
    [Tags]    invalidpath
# les etapes cree dans keyw
    Ouvrir le navigateur
    Remplir le champ user_Name locked
    Remplir le champ password
    cliquer sur le bouton login

# les etapes cree dans keyw
se connecter avec user problem
    [Tags]    invalidpath
    Ouvrir le navigateur
    Remplir le champ user_Name problem with user
    Remplir le champ password
    cliquer sur le bouton login
se connecter avec valid user
    [Tags]    validpath
    Ouvrir le navigateur
    Remplir le champ user_Name with valid user
    Remplir le champ password
    cliquer sur le bouton login
    


    
    

    


    

