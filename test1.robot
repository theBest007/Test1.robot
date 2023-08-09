*** Settings ***
Library    SeleniumLibrary
Documentation     Test Case.

*** Variables ***
${Browser}  Chrome
${URL}  https://apgforum.net/memory-space/?ad=login
${temps}  2s

*** Test Cases ***
 TextExemple
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Input Text    name=login    admin@ccib.ci
    Input Password    name=password    1234
    Click Element    //input[@name='BtnValider']
    Click Element    //a[@href='?ad=admin&p=historique']
    Click Element    //a[@href='?ad=admin&p=new-Exo']
    Click Element    //a[@href='?ad=admin&p=program']
    Set Selenium Speed    1.5 seconds
    Scroll Element Into View    //td[contains(text(),'Rasoaritahina')]
    Click Element    //a[@href='?ad=admin&p=compte-sms&cot=s6aafm820230503']
    Scroll Element Into View    //h3[contains(text(),'Exercices dÃ©jÃ  jouÃ©s')]
    Click Element    //a[contains(text(),'DÃ©connexion')]
    Click Element    //a[contains(text(),'Ouvrire votre compte')]
	Close Browser