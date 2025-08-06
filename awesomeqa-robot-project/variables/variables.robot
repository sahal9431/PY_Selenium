*** Variables ***
${Base_Url}    https://awesomeqa.com/ui/index.php?route=common/home
${Browser}    Chrome
#Login page variables
${VALID_EMAIL}    testuser@awesomeqa.com
${VALID_PASSWORD}    test123
${My_Account_Button}    xpath=//a[@title='My Account']
${Login_Button_home}    xpath=//a[text()='Login']
${Register_Button}    xpath=//a[text()='Register']
${Input_Email_login_page}    name=email
${Input_Password_login_page}    name=password
${Login_button}    //input[@value='Login']
${MY_ACCOUNT_TEXT}  xpath=//h2[text()='My Account']
#Register page variables
${First_name}    Leo
${Last_name}    Messi
${telephone}    1234567890
${First_name_field}    name=firstname
${Last_name_filed}    name=lastname
${Email_field}    id=input-email
${Telephone_field}    id=input-telephone
${Password_field}    id=input-password
${Confirm_password_field}    id=input-confirm
${Regitration_privacy_policy_checkbox}    name=agree
${Continue_button}    //input[@value='Continue']
${SUCCESS_MESSAGE}     xpath=//h1[text()='Your Account Has Been Created!']