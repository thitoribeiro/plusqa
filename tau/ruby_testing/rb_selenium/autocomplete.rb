require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/autocomplete"

autocomplete = driver.find_element(id: 'autocomplete')
autocomplete.send_keys('Rua Maracy, 2-80, Vila Maracy, Bauru, São Paulo, Brasil')

# implicit
driver.manage.timeouts.implicit_wait = 5

# explicit
#wait = selenium::webdriver::wait.new(timeout: 5)
#wait.until { driver.find_element(class: 'pac-item').displayed? }

autocomplete_result = driver.find_element(class: 'pac-item')
autocomplete_result.click