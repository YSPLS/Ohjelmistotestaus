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
Test_2
    Open Browser    https://www.jimms.fi/    Firefox
    Maximize Browser Window
    Click Element    xpath://html/body/footer/div[1]/div[1]/div[2]/div/div[2]/div/a
    Input Text    xpath:///*[@id="email"]    lassi23004@student.hamk.fi
    Click Button    xpath://html/body/main/div/div/form/div[3]/input
Test_3
    Open Browser    https://www.jimms.fi/    Firefox
    Maximize Browser Window
    Click Element    xpath://html/body/footer/div[1]/div[2]/div[1]/ul/li[4]/a
    Click Element    xpath://html/body/main/div[2]/div/div[2]/div/div/ol/li[2]/a

    Input Text    xpath:///*[@id="pf-SalesID"]    02139834701924
    Input Text    xpath:///*[@id="pf-Name"]    Marko Kaski
    Input Text    xpath:///*[@id="pf-StreetAddress"]    Papinpellontie 6, A11
    Input Text    xpath:///*[@id="pf-PostalCode"]    04130
    Input Text    xpath:///*[@id="pf-City"]    Sipoo
    Input Text    xpath:///*[@id="pf-Email"]    Jokeri95@gmail.com
    Input Text    xpath:///*[@id="pf-Phone"]    +358124412334
    Input Text    xpath:///*[@id="pf-RmaProductCode"]    42069
    Input Text    xpath:///*[@id="pf-RmaProductName"]    Tampuriini
    Input Text    xpath:///*[@id="RmaMessage"]    Ei pojat asiat näin huonosti voi olla
    Input Text    xpath:///*[@id="pf-BankAccount"]    FI39458729347
    Input Text    xpath:///*[@id="pf-OSPassword"]    0420
    Click Button    xpath://html/body/main/div[2]/div/div[2]/div/div/form/input[2]
Test_4
    Open Browser    https://www.jimms.fi/    Firefox
    Maximize Browser Window
    Sleep    2   
    Click Element    xpath://html/body/header/div/div[1]/jim-drilldown-mega-menu/nav/ul/li[2]/a
    Sleep    2
    Click Element    xpath://html/body/main/div[2]/div/div[1]/filtermenu/div/div[2]/div/div/div[2]/div/ul/li[12]/div/div/a/i
    Sleep    2
    Click Element    /html/body/main/div[2]/div/div[1]/filtermenu/div/div[2]/div[3]/div[3]/div[1]/span
    Sleep    2
    Click Element    xpath://html/body/main/div[2]/div/div[1]/filtermenu/div/div[2]/div[3]/div[3]/div[2]/div/div[32]/span[2]
    Sleep    2
    Click Element    xpath://html/body/main/div[2]/div/div[1]/filtermenu/div/div[2]/div[3]/div[3]/div[2]/div/div[28]/div/i