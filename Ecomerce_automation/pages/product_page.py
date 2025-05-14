from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import Select

class ProductPage():
    def __init__(self, driver):
        self.driver = driver
        self.wait = WebDriverWait(driver, 10)

        self.product_menu = (By.XPATH, '//a[@href="/products"]')
        self.view_product_button = (By.XPATH, '//p[normalize-space()="Blue Top"]/following::a[contains(text(),"View Product")][1]')
        self.quantity = (By.ID, "quantity")
        self.add_to_cart_button = (By.XPATH, "//button[@type = 'button']")
        self.product_add_check = (By.XPATH, '//h4[@class = "modal-title w-100"]')
        self.view_cart_button = (By.XPATH, "//u[text()='View Cart']")
        self.product_added_check = (By.ID, "product-1")
        self.checkout_button = (By.XPATH, '//a[@class = "btn btn-default check_out"]')
        self.place_oder_button = (By.XPATH, '//a[@class = "btn btn-default check_out"]')

        #payment section
        self.name_on_card = (By.NAME, "name_on_card")
        self.number_on_card = (By.NAME, "card_number")
        self.cvc = (By.NAME, "cvc")
        self.expiry_month = (By.NAME, "expiry_month")
        self.expiry_year = (By.NAME, "expiry_year")
        self.pay_and_confirm = (By.ID, "submit")

        #Verify product odered is succeeded
        self.product_odered_succes = (By.XPATH, '//b[text() = "Order Placed!"]')

        # selecting continue button as final step
        self.continue_button = (By.XPATH, '//a[@class = "btn btn-primary"]')

    def go_to_product_page(self):
        self.driver.find_element(*self.product_menu).click()

    def add_product_to_cart(self, quantity, name, number, cvc, month, year):
        self.driver.find_element(*self.view_product_button).click()
        #add quantity
        self.quantity.clear()
        self.driver.find_element(*self.quantity).send_keys(str(quantity))

        #add to cart
        self.wait.until(EC.visibility_of_element_located(self.add_to_cart_button)).click()
        assert self.wait.until(EC.visibility_of_element_located(self.product_add_check))

        #click cart button in pop up window
        self.driver.find_element(*self.view_cart_button).click()

        #checkout page
        assert self.wait.until(EC.visibility_of_element_located(self.product_added_check))
        self.driver.find_element(*self.checkout_button).click()

        #place oder
        self.wait.until(EC.visibility_of_element_located(self.place_oder_button)).click()

        #payment section
        self.wait.until(EC.visibility_of_element_located(self.name_on_card)).send_keys(name)
        self.driver.find_element(*self.number_on_card).send_keys(number)
        self.driver.find_element(*self.cvc).send_keys(cvc)
        self.driver.find_element(*self.expiry_month).send_keys(month)
        self.driver.find_element(*self.expiry_year).send_keys(year)
        self.driver.find_element(*self.pay_and_confirm).click()

        #verifiaction of odering
        assert self.wait.until(EC.visibility_of_element_located(self.product_odered_succes)).is_displayed()
        self.driver.find_element(*self.continue_button).click()
        
