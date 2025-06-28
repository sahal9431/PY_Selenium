from selenium import webdriver
from selenium.webdriver.chrome.service import Service as ChromeService
from webdriver_manager.chrome import ChromeDriverManager

def get_chrome_driver():
    options = webdriver.ChromeOptions()
    # Optional: Add common options here
    # options.add_argument("--headless")  # Run in headless mode (without opening browser window)
    options.add_argument("--start-maximized") # Maximize window on startup
    options.add_argument("--disable-gpu") # Recommended for headless mode
    options.add_argument("--no-sandbox") # Bypass OS security model
    options.add_argument("--disable-dev-shm-usage") # Overcome limited resource problems

    # Automatically download and manage ChromeDriver
    service = ChromeService(ChromeDriverManager().install())
    driver = webdriver.Chrome(service=service, options=options)
    driver.implicitly_wait(10) # Set implicit wait for 10 seconds
    return driver

def quit_driver(driver):
    if driver:
        driver.quit()