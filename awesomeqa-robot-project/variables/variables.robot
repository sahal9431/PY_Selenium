*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/home_page.robot
*** Variables ***
# robot -d results .\tests\Compare_two_products_Test_13.robot      
${Base_Url}    https://awesomeqa.com/ui/index.php?route=common/home
${Browser}    Chrome

#Login page variables
${VALID_EMAIL}    leomessi107@gmail.com
${VALID_PASSWORD}    Worldcup2022
${My_Account_Button}    xpath=//a[@title='My Account']
${Login_Button_home}    xpath=//a[text()='Login']
${Register_Button}    xpath=//a[text()='Register']
${Input_Email_login_page}    name=email
${Input_Password_login_page}    name=password
${Login_button}    //input[@value='Login']
${MY_ACCOUNT_TEXT}  xpath=//h2[text()='My Account']
${Home_button_in_my_account}    xpath=//i[@class='fa fa-home']

#Register page variables
${First_name}    Leo
${Last_name}    Messi
${telephone}    1234567890

${First_name_field}    name=firstname
${Last_name_filed}    name=lastname
${Email_field}    id=input-email
${password}=    Generate Random String    8
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
${Cart_button}    id=cart-total
${check_for_product_in_cart_intractive_model}    xpath=//*[@id="cart"]/ul/li[1]/table/tbody/tr/td[2]/a
${View_Cart_Button}    xpath=//strong[contains(text(), 'View Cart')]
${Verify_Product_in_Cart}    xpath=//div[@id='content']//a[text()='MacBook']
${Remove_Product_From_Cart}    xpath=//button[@data-original-title='Remove']
${Verify_cart_is_empty}    xpath=//div/p[contains(text(), 'Your shopping cart is empty!')]
${Item_Price_in_Cart}    xpath=//tbody/tr/td[6][@class='text-right']
#${Total_price_in_cart}    xpath=//table[@class='table table-bordered']/tbody/tr[4]/td[2][@class= 'text-right']
${Total_price_in_cart}    xpath=(//table[@class='table table-bordered']//td[@class='text-right'])[last()]

#Checkout page variables
${checkout_button}    xpath=//*[@id="cart"]/ul/li[2]/div/p/a[2]/strong
${Verify_checkout_page}    xpath=//div/h1[contains(text(), 'Checkout')]
${Checkout_page_Register_Acc_radio_button}    css:input[value='register']
${Continue_button_checkout_page}    id=button-account
${Checkout_page_First_name}    id=input-payment-firstname
${Checkout_page_Last_name}    id=input-payment-lastname
${Checkout_page_Email}    id=input-payment-email
${Checkout_page_Telephone}    id=input-payment-telephone
${checkout_password}    id=input-payment-password
${Checkout_page_Confirm_password}    id=input-payment-confirm
${Checkout_page_Address_1}    id=input-payment-address-1
${Checkout_page_City}    id=input-payment-city
${Checkout_page_Postcode}    id=input-payment-postcode
${Checkout_page_Country}    id=input-payment-country
${Checkout_page_Region}    id=input-payment-zone
${Checkout_page_newsletter_checkbox}    id=newsletter
${Checkout_page_privacy_policy_checkbox}    xpath=//input[@name='agree']
${Continue_button_checkout_page_Register}    id=button-register
${Guest_checkout_radio_button}    xpath=//input[@value='guest']
${Guest_checkout_continue_button}    id=button-guest

#Search page variables
${Search_catogory_dropdown}    xpath=//select[@name='category_id']
${Search_Sort_dropdown}    id=input-sort
${Search_price}    css:.price

# Wishlist page variables
${Wishlist_button_home_page}    xpath=//span[contains(text(), 'Wish List')]
${Wishlist_returning_customer}    xpath=//h2[contains(text(), 'Returning Customer')]
${Wishlist_User_email}    id=input-email
${Wishlist_User_password}    id=input-password
${Wishlist_login_button}    xpath=//input[@value='Login']
${Wishlist_verify}    xpath=//h2[contains(text(), 'Wish List')]

#Compare page variables
${Comparison_page_verify}    xpath=//h1[text()='Product Comparison']
${Comparison_table}    xpath=//table[@class='table table-bordered']

#Contack Us page variables
${Contact_Us_button}    xpath=//a[contains(text(), 'Contact Us')]
${Contact_Us_page_heading}    xpath=//h1[text()='Contact Us']
${Contact_Us_name_field}    id=input-name
${Contact_Us_email_field}    id=input-email
${Contact_Us_enquiry_field}    id=input-enquiry
${Contact_Us_submit_button}    xpath=//input[@value='Submit']
${Contact_Us_success_message}    xpath=//p[text()='Your enquiry has been successfully sent to the store owner!']

#currency variables
${Currency_dropdown}    xpath=//form[@id='form-currency']//button
${Currency_option_euro}    xpath=//button[@name='EUR']
${Currency_option_pound}    xpath=//button[@name='GBP']
${Currency_option_dollar}    xpath=//button[@name='USD']
${First_product_price}    xpath=//*[@id="content"]/div[2]/div[1]/div/div[2]/p[2]

#Product details page variables
${Details_page_review_tab}    xpath=//a[@href='#tab-review']
${Review_Input_name}    id=input-name
${Review_Input_review}    id=input-review
${Review_Rating}    xpath=//input[@name='rating' and @value='3']
${Review_Submit_button}    id=button-review
${Review_Success_message}    xpath=//div[@class='alert alert-success alert-dismissible']
${Review_input}     Thank you for your review. It has been submitted to the webmaster for approval. Thank you for your review. It has been submitted to the webmaster for approval.