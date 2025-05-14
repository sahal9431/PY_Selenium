from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time
from selenium.webdriver.support.ui import Select

class Login_Page():
    def __init__(self, driver):
        self.driver = driver
        self.wait = WebDriverWait(driver, 10)
        self.login_button = (By.XPATH, '//a[contains(text()," Signup / Login")]')
        self.login_page_verify = (By.XPATH, '//h2[contains(text(),"New User Signup!")]')
        self.sign_up_name = (By.XPATH, '//input[@data-qa="signup-name"]')
        self.sig_up_email = (By.XPATH, '//input[@data-qa="signup-email"]')
        self.sign_up_button = (By.XPATH, '//button[@data-qa="signup-button"]')

        #Creating Account
        self.title_gender = (By.ID, "id_gender1")
        self.password = (By.ID, "password")
        self.days = (By.ID, "days")
        self.months = (By.ID, "months")
        self.years = (By.ID, "years")

        self.news_letter = (By.ID, "newsletter")
        self.offer = (By.ID, "optin")

        #Adress info
        self.first_name = (By.ID, "first_name")
        self.last_name = (By.ID, "last_name")
        self.company = (By.ID, "company")
        self.address = (By.ID, "address1")
        self.country = (By.ID, "country")
        self.state = (By.ID, "state")
        self.city = (By.ID, "city")
        self.zipcode = (By.ID, "zipcode")
        self.mobile_number = (By.ID, "mobile_number")
        self.create_button = (By.XPATH, "//button[@type='submit']")
        self.account_created = (By.XPATH, "//b[text()= 'Account Created!']")

        #Log in
        self.login_email = (By.XPATH, "//input[@type='email']")
        self.login_password = (By.XPATH, "//input[@type='password']")
        self.login_button = (By.XPATH, "//button[@type='submit']")

        #log_out
        self.log_out = (By.XPATH, '//a[normalize-space()= "Logout"]')
        self.login_page_text = (By.XPATH, '//h2[normalize-space()="Login to your account"]')
    
    def log_out_account(self):
        self.driver.find_element(*self.log_out).click()
        assert self.wait.until(EC.visibility_of_element_located(self.login_page_text)).is_displayed()

    def log_in_acount(self, email, password):
        self.driver.find_element(*self.login_email).send_keys(email)
        self.driver.find_element(*self.login_password).send_keys(password)
        self.driver.find_element(*self.login_button).click()

    def account_creation(self, user):
        self.driver.find_element(*self.title_gender).click()
        self.driver.find_element(*self.password).send_keys(user["password"])
        Select(self.driver.find_element(*self.days)).select_by_value(user["day"])
        Select(self.driver.find_element(*self.months)).select_by_value(user["month"])
        Select(self.driver.find_element(*self.years)).select_by_value(user["year"])
        self.driver.find_element(*self.news_letter).click()
        self.driver.find_element(*self.offer).click()
        self.driver.find_element(*self.first_name).send_keys(user["first_name"])
        self.driver.find_element(*self.last_name).send_keys(user["last_name"])
        self.driver.find_element(*self.company).send_keys(user["company"])
        self.driver.find_element(*self.address).send_keys(user["address"])
        Select(self.driver.find_element(*self.country)).select_by_visible_text(user["country"])
        self.driver.find_element(*self.state).send_keys(user["state"])
        self.driver.find_element(*self.city).send_keys(user["city"])
        self.driver.find_element(*self.zipcode).send_keys(user["zipcode"])
        self.driver.find_element(*self.mobile_number).send_keys(user["mobile_number"])
        self.driver.find_element(*self.create_button).click()
        time.sleep(5)

    def account_created_verif(self):
        return self.driver.find_element(*self.account_created).is_displayed()
    
    def go_to_signup_login_page(self):
        signup_btn = self.wait.until(EC.element_to_be_clickable(self.login_button))
        self.driver.execute_script("arguments[0].scrollIntoView(true);", signup_btn)  # make sure it's in view
        signup_btn.click()
        time.sleep(2)
    
    def enter_sign_up_details(self, name, email):
        self.wait.until(EC.visibility_of_element_located(self.sign_up_name)).send_keys(name)
        self.wait.until(EC.visibility_of_element_located(self.sig_up_email)).send_keys(email)
        time.sleep(5)
        self.wait.until(EC.element_to_be_clickable(self.sign_up_button)).click()
        time.sleep(5)
        