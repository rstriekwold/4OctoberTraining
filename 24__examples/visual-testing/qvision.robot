*** Settings ***
Library                    QWeb
Library                    QForce
Library                    QVision
Resource                   ../../resources/common.robot
Suite Setup                Setup Browser
Suite Teardown             Close All Browser Sessions

*** Variables ***
${EXP_URL}                 https://brenntagnauat--mvpuat.sandbox.my.site.com/BrenntagConnectSupply/s/login/
${EXP_USERNAME}            philgowaski@fake.com.uatuser
${EXP_PASSWORD}            Infosys@1234

*** Test Cases ***

Try something RPA images
    Appstate               Home
    Click Text             Reports                     delay=5s
    Click Text             Opportunity Amount by Stage (Sample)                    delay=5s
    ${file}=               LogScreenshot               # returns full path to saved image file
    QVision.Verify Icon    ${CUR_DIR}${/}..${/}toggleon.png                        screenshot=${file}
    Log                    ${CUR_DIR}${/}..${/}toggleon.png