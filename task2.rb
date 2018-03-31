require "selenium-webdriver"

email = "roqbaata@10mail.org"
pass = "123121"

driver = Selenium::WebDriver.for :safari
driver.navigate.to "http://onetwotrip.com"

driver.find_element(id: "topMenu_login").click
sleep 2
driver.find_element(id: "input_auth_email").send_keys(email)
driver.find_element(id: "input_auth_pas").send_keys(pass)
sleep 1
driver.find_element(css: "#SocialAuth > div.pos_but > button").click

sleep 1
driver.find_element(class: "profileContainer").click
driver.find_element(id: "topMenu_logout").click
sleep 1

driver.quit