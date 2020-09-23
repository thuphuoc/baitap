require'selenium-webdriver'
require'Webdrivers'
driver=Selenium::WebDriver.for:chrome
driver.get(' https://itmscoaching.herokuapp.com/form')
driver.manage.window.maximize
driver.find_element(id:"first-name").send_keys('iTMS')
sleep 2
driver.find_element(id:"last-name").send_keys('Coaching')
sleep 2
driver.find_element(id:"job-title").send_keys('QA')

driver.manage.timeouts.implicit_wait=2
driver.find_element(id:"radio-button-2").click
driver.manage.timeouts.implicit_wait=2
driver.find_element(id:"checkbox-1").click
options=driver.find_element(id:"select-menu")
select_object = Selenium::WebDriver::Support::Select.new(options)
driver.manage.timeouts.implicit_wait=2
select_object.select_by(:text,"2-4")
sleep 2
driver.manage.timeouts.implicit_wait=2
driver.find_element(id:"datepicker").send_keys('27/10/2025')
sleep 2
driver.manage.timeouts.implicit_wait=2
driver.find_element(xpath:"//a[@class='btn btn-lg btn-primary']").click
driver.quit
