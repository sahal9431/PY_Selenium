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
#Product search variables
${Search_Input_Field}    xpath=//input[@name='search']
${Search_Button}    xpath=//button[@class='btn btn-default btn-lg']
${Search_Result_heading}    xpath=//h1[contains(text(), 'Search')]
#Add to cart variables
${Add_macbook to carrt}    xpath=//*[@id="content"]/div[3]/div[1]/div/div[2]/div[2]/button[1]
${SUCCESS_MESSAGE_ADD_TO_CART}    xpath=//div[contains(@class, 'alert alert-success alert-dismissible')]
${Cart_button}    id=cart
${check_for_product_in_cart_intractive_model}    xpath=//*[@id="cart"]/ul/li[1]/table/tbody/tr/td[2]/a
${View_Cart_Button}    xpath=//strong[contains(text(), 'View Cart')]
${Verify_Product_in_Cart}    xpath=//div[@id='content']//a[text()='MacBook']
${Remove_Product_From_Cart}    xpath=//button[@data-original-title='Remove']
${Verify_cart_is_empty}    xpath=//div/p[contains(text(), 'Your shopping cart is empty!')]
${checkout_button}    xpath=//strong[contains(text(), 'Checkout')]
${Verify_checkout_page}    xpath=//div/h1[contains(text(), 'Checkout')]