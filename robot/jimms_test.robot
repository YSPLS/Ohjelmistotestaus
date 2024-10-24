*** Settings ***
Library    SeleniumLibrary
Library    String
Library    XML
Library    Collections
Library    Screenshot

*** Variables ***
${H1}    xpath=//h1
${Tietokoneet}    //html/body/header/div/div[1]/jim-drilldown-mega-menu/nav/ul/li[1]/a
${Komponentit}    //html/body/header/div/div[1]/jim-drilldown-mega-menu/nav/ul/li[2]/a
${Oheislaitteet}    //html/body/header/div/div[1]/jim-drilldown-mega-menu/nav/ul/li[3]/a
${Pelaaminen}    //html/body/header/div/div[1]/jim-drilldown-mega-menu/nav/ul/li[4]/a
${Sim_Racing}    //html/body/header/div/div[1]/jim-drilldown-mega-menu/nav/ul/li[5]/a
${Verkkotuotteet}    //html/body/header/div/div[1]/jim-drilldown-mega-menu/nav/ul/li[6]/a
${Tarvikkeet}    //html/body/header/div/div[1]/jim-drilldown-mega-menu/nav/ul/li[7]/a
${Erikoistuotteet}    //html/body/header/div/div[1]/jim-drilldown-mega-menu/nav/ul/li[8]/a
${Ohjelmistot}    //html/body/header/div/div[1]/jim-drilldown-mega-menu/nav/ul/li[9]/a
${Palvelut}    //html/body/header/div/div[1]/jim-drilldown-mega-menu/nav/ul/li[10]/a
${Kampanjat}    //html/body/header/div/div[1]/jim-drilldown-mega-menu/nav/ul/li[11]/a

*** Test Cases ***
Test_1
    Open Browser    https://www.jimms.fi/   Firefox
    Maximize Browser Window
    Sleep    2
    Check Landing Page    ${Tietokoneet}    Tietokoneet
    Check Landing Page    ${Komponentit}    Komponentit
    Check Landing Page    ${Oheislaitteet}    Oheislaitteet
    Check Landing Page    ${Pelaaminen}    Pelaaminen
    Check Landing Page    ${Sim_Racing}    Sim Racing
    Check Landing Page    ${Verkkotuotteet}    Verkkotuotteet
    Check Landing Page    ${Tarvikkeet}    Tarvikkeet
    Check Landing Page    ${Erikoistuotteet}    Erikoistuotteet
    Check Landing Page    ${Ohjelmistot}    Ohjelmistot
    Check Landing Page    ${Palvelut}    Palvelut
    Check Landing Page    ${Kampanjat}    Kampanjat
    
Test_2
    #Newsletter subsribe test
    Open Browser    https://www.jimms.fi/    Firefox
    Maximize Browser Window
    Wait Until Element Is Visible    xpath://html/body/footer/div[1]/div[1]/div[2]/div/div[2]/div/a
    Sleep    3
    #Press newsletter button
    Click Element    xpath://html/body/footer/div[1]/div[1]/div[2]/div/div[2]/div/a
    #input email
    Input Text    xpath://*[@id="email"]    lassi23004@student.hamk.fi
    #click submit button
    Click Button    xpath://html/body/main/div/div/form/div[3]/input
Test_3
    #RMA request test
    Open Browser    https://www.jimms.fi/    Firefox
    Maximize Browser Window
    Sleep    6
    Click Element    xpath://html/body/footer/div[1]/div[2]/div[1]/ul/li[4]/a
    Click Element    xpath://html/body/main/div[2]/div/div[2]/div/div/ol/li[2]/a

    Input Text    xpath://*[@id="pf-SalesID"]    02139834701924
    Input Text    xpath://*[@id="pf-Name"]    Marko Kaski
    Input Text    xpath://*[@id="pf-StreetAddress"]    Papinpellontie 6, A11
    Input Text    xpath://*[@id="pf-PostalCode"]    04130
    Input Text    xpath://*[@id="pf-City"]    Sipoo
    Input Text    xpath://*[@id="pf-Email"]    Jokeri95@gmail.com
    Sleep    3
    Input Text    xpath://*[@id="pf-Phone"]    +3584578400950
    Input Text    xpath://*[@id="pf-RmaProductCode"]    42069
    Input Text    xpath://*[@id="pf-RmaProductName"]    Tampuriini
    Input Text    xpath://*[@id="RmaMessage"]    Ei pojat asiat näin huonosti voi olla

    Sleep    6
    Input Text    xpath://*[@id="pf-BankAccount"]    FI39458729347
    Input Text    xpath://*[@id="pf-OSPassword"]    0420
    
    Click Button    xpath://html/body/main/div[2]/div/div[2]/div/div/form/input[2]
Test_4
    #Power supply manufactor check
    Open Browser    https://www.jimms.fi/    Firefox
    Maximize Browser Window
    Sleep    2   
    Click Element    xpath://html/body/header/div/div[1]/jim-drilldown-mega-menu/nav/ul/li[2]/a
    Sleep    2
    Click Element    xpath://html/body/main/div[2]/div/div[1]/filtermenu/div/div[2]/div/div/div[2]/div/ul/li[12]/div/div/a/i
    Sleep    2
    Click Element    xpath://html/body/main/div[2]/div/div[1]/filtermenu/div/div[2]/div[3]/div[3]/div[1]/i[2]
    Sleep    2
    Click Element    xpath://html/body/main/div[2]/div/div[1]/filtermenu/div/div[2]/div[3]/div[3]/div[2]/div/div[31]/span[2]
    Sleep    5
    Click Element    xpath://html/body/main/div[2]/div/div[1]/filtermenu/div/div[2]/div[3]/div[3]/div[2]/div/div[3]/div[1]/span

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

Test_7
    Open Browser    https://www.jimms.fi/    Chrome
    Maximize Browser Window
    Sleep    1
    #Käyttäjätilin luonti
    Click Element    xpath:/html/body/header/div/div[3]/jim-customer-dropdown-nav/div/div/a/span
    Sleep    1
    #ei asiakastiliä
    Click Element    xpath:/html/body/main/div/div[1]/div/div/div/div[2]/input
    Sleep    1
    #Information
    Click Element    name:EmailAddress
    Input Text    name:EmailAddress    IiroPeltonen@gmail.com
    Sleep    1

    Click Element    xpath:/html/body/main/div/div[2]/div[2]/div/div/div/form/div[2]/input
    Input Text      xpath:/html/body/main/div/div[2]/div[2]/div/div/div/form/div[2]/input    salasana
    Sleep    1
    
    Click Element    name:ConfirmPassword
    Input Text    name:ConfirmPassword    salasana    
    Sleep    1

    Click Element    name:FirstName
    Input Text    name:FirstName    Iiro
    Sleep    1

    Click Element    name:LastName
    Input Text    name:LastName    Peltonen
    Sleep    1
    
    Click Element    name:PostalCode
    Input Text    name:PostalCode    13600
    Sleep    1

    Click Element    name:City
    Input Text    name:City    Hämeenlinna
    Sleep    1

    Click Element    xpath:/html/body/main/div/div[2]/div[2]/div/div/div/form/div[8]/div/input
    Sleep    1

    Click Element    xpath:/html/body/main/div/div[2]/div[2]/div/div/div/form/div[9]/input
    Sleep    3

Test_8 Search for a product (ps5)

    Open Browser    https://www.jimms.fi/    Chrome
    Maximize Browser Window
    Sleep    1
    #Searching for a product
    Click Element    xpath:/html/body/header/div/div[4]/jim-quickproductsearch/div/form/input
    Input Text    xpath:/html/body/header/div/div[4]/jim-quickproductsearch/div/form/input    ps5
    Sleep    1
    Click Element    xpath:/html/body/header/div/div[4]/jim-quickproductsearch/div/form/button/i
    Sleep    1
    Press Keys    xpath:/html/body/header/div/div[4]/jim-quickproductsearch/div/form/input    ENTER
    Sleep    1
    #Taking a screenshot of the first product from the search results
    Capture Element Screenshot    xpath:/html/body/main/div[2]/div/div[2]/div[5]/div/div[1]/product-box    ps5_product.png
    Sleep    1   
    #Clicking the first product from the search results
    Click Element    xpath:/html/body/main/div[2]/div/div[2]/div[5]/div/div[1]/product-box/div[2]/div[2]/h5/a/span
    Sleep    1
    Page Should Contain    PS5

Test_9 Can you find a link to shopping cart from the product page?

    Open Browser    https://www.jimms.fi/    Chrome
    Maximize Browser Window
    Sleep    1
    #Searching for a product
    Click Element    xpath:/html/body/header/div/div[4]/jim-quickproductsearch/div/form/input
    Sleep    1
    Input Text    xpath:/html/body/header/div/div[4]/jim-quickproductsearch/div/form/input    ps5
    Sleep    1
    Press Keys    xpath:/html/body/header/div/div[4]/jim-quickproductsearch/div/form/input    ENTER
    Sleep    1
    #Clicking the first product from the search results
    Click Element    xpath:/html/body/main/div[2]/div/div[2]/div[5]/div/div[1]/product-box/div[2]/div[2]/h5/a/span
    Sleep    1
    #Checking if the shopping cart link is in the product page
    Element Should Be Visible    xpath:/html/body/main/div[1]/div[2]/div/jim-product-cta-box/div/div[3]/div[2]/addto-cart-wrapper/div/a

Test_10 Can you find the shopping cart link icon from the product page?
    
    Open Browser    https://www.jimms.fi/    Chrome
    Maximize Browser Window
    Sleep    1
    #Searching for a product
    Click Element    xpath:/html/body/header/div/div[4]/jim-quickproductsearch/div/form/input
    Sleep    1
    Input Text    xpath:/html/body/header/div/div[4]/jim-quickproductsearch/div/form/input    ps5
    Sleep    1
    Press Keys    xpath:/html/body/header/div/div[4]/jim-quickproductsearch/div/form/input    ENTER
    Sleep    1
    #Clicking the first product from the search results
    Click Element    xpath:/html/body/main/div[2]/div/div[2]/div[5]/div/div[1]/product-box/div[2]/div[2]/h5/a/span
    Sleep    1
    #Finding the shopping cart link icon and taking a screenshot of it
    Capture Element Screenshot    xpath:/html/body/main/div[1]/div[2]/div/jim-product-cta-box/div/div[3]/div[2]/addto-cart-wrapper/div/a/span    shopping_cart_icon.png

*** Keywords ***
Check Landing Page
    [Arguments]    ${element}    ${expected_text}    
    Click Element    ${element}
    Wait Until Element Is Visible    ${H1}    timeout=10
    # Log the current value of H1
    Log    H1 XPath: ${H1}

    # Get the text of the H1 element
    ${h1_text}=    Get Text    ${H1}
    Log    Retrieved H1 text: ${h1_text}
    Run Keyword If    '${expected_text}' in '${h1_text}'    Log    Landing page for '${expected_text}' found    ELSE    Log    There is no landing page for '${expected_text}'


