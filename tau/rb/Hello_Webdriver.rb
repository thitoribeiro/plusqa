require "selenium-webdriver"

driver = Selenium ::WebDriver.for :firefox
driver.navigate.to "https://formy-project.herokuapp.com/keypress"

name = driver.find_element(id: 'name')
name.send_keys('Thito Ribeiro')

button = driver.find_element(id: 'button')
button.click