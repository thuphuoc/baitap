require'selenium-webdriver'
require'Webdrivers'
driver=Selenium::WebDriver.for:chrome;
driver.get('https://www.google.com/')
driver.manage.window.maximize
puts driver.title
puts driver.current_url
puts driver.page_source
driver.find_element(name:'q').send_keys('iTMS coaching')
driver.manage.timeouts.implicit_wait=2
driver.find_element(xpath:"//div[@class='tfB0Bf']//input[@name='btnK']").click
puts driver.title
puts driver.current_url