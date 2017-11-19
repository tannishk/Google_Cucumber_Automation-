require 'cucumber'
require 'selenium-webdriver'


Given(/^a user goes to Google$/) do
  @driver = Selenium::WebDriver.for :chrome
  @driver.navigate.to 'http://www.google.co.in'
end

When(/^they search for "([^"]*)"$/) do |arg|
  asas = @driver.find_element(:id,"lst-ib")
  asas.send_keys(arg)
  asas.send_keys :return

end

Then(/^Google should search for "([^"]*)"$/) do |arg|


  result = @driver.find_elements(:class_name,"r")
  puts result
  result.each do |obj|
    puts obj.text
  end
  sleep 10
end