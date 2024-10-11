*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***


*** Test Cases ***
Test_1
    Open Browser    https://www.jimms.fi/fi/Product/Oheislaitteet    Firefox
    Maximize Browser Window
    Sleep    2
    Scroll Element Into View    locator
    Click Element    xpath://html/body/main/div[2]/div/div[2]/div[4]/div/div[1]/product-box/div[2]/div[2]/h5/a
    Click Element    xpath://html/body/main/div[1]/div[2]/div/jim-product-cta-box/div/div[3]/div[2]/addto-cart-wrapper/div/a
    Click Element    xpath://html/body/header/div/div[3]/jim-cart-dropdown/div/a
Test_2
    Open Browser    https://www.jimms.fi/    Firefox
    Maximize Browser Window
    Wait Until Element Is Visible    xpath://html/body/footer/div[1]/div[1]/div[2]/div/div[2]/div/a
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

*** Test Cases ***
Test_5
#change the background color
    Open Browser    https://www.jimms.fi/    Chrome
    Maximize Browser Window
    Sleep    2
    Click Element    xpath:/html/body/div[1]/div/div/span
    Sleep    2
    Click Element    xpath:/html/body/div[1]/div/div/ul/li[1]/button

Test_6
#put item in the shopping cart and navigate all the way user information page
    Open Browser    https://www.jimms.fi/    Chrome
    Maximize Browser Window
    Sleep    1
    #pelitietokoneet
    Click Element    xpath:/html/body/main/div[3]/jim-category-image/div/div[1]/a/div[1]/img
    Sleep    2
    #lisää ostoskoriin Mach 1
    Click Element    xpath:/html/body/main/div[2]/div/div[2]/div[4]/div[4]/div[1]/div[1]/product-box/div[2]/div[3]/addto-cart-wrapper/div/a
    Sleep    2
    #avaa ostoskori
    Click Element    xpath:/html/body/header/div/div[3]/jim-cart-dropdown/div/a
    Sleep    2
    #Siirry kassalle
    Click Element   xpath:/html/body/main/div/div/div/div[2]/div/div[3]/a
    Sleep    2
    #Ei, ilman asiakastiliä
    Click Element    xpath:/html/body/main/div/div/div/div[1]/div/div/div/div[3]/input
    Sleep    2
    #Seuraava
    Click Element    xpath:/html/body/main/div/div/div/div[2]/div[4]/div/div/form/input[3]
    Sleep    2
    #Userin informaatiot