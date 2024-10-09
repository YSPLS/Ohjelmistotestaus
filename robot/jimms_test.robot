*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***



*** Test Cases ***
Test_1
    Open Browser    https://www.jimms.fi/fi/Product/Oheislaitteet    Firefox
    Maximize Browser Window
    Sleep    2
    Click Element    xpath://html/body/main/div[2]/div/div[2]/div[4]/div/div[1]/product-box/div[2]/div[2]/h5/a
    Click Element    xpath://html/body/main/div[1]/div[2]/div/jim-product-cta-box/div/div[3]/div[2]/addto-cart-wrapper/div/a
    Click Element    xpath://html/body/header/div/div[3]/jim-cart-dropdown/div/a