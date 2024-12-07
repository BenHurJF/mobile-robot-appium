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

    ${menu}    Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible    ${menu}    10
    Click Element                    ${menu}

    Sleep    5

    Close Application