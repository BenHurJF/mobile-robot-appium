*** Settings ***

Library    AppiumLibrary

*** Test Cases ***

Deve abrir a tela principal
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/android/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true

    Wait Until Page Contains         QAX    10
    Click Text                       QAX

    ${menu}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/toolbar"]//*[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible    ${menu}    5
    Click Element                    ${menu}
    
    ${menuCliqueBotoes}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Clique em Botões"]
    
    Wait Until Element Is Visible    ${menuCliqueBotoes}    5
    Click Element                    ${menuCliqueBotoes}

    Wait Until Element Is Visible    Clique simples    9
    Click Text                       Clique simples
    Wait Until Element Is Visible    Botão clique simples 9


    Sleep    10

    Close Application