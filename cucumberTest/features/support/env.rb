require 'rubygems'
require 'selenium-webdriver'
require 'test/unit/assertions'

browser = Selenium::WebDriver.for(:firefox) 

World(Test::Unit::Assertions)

#before all

Before do
    @browser = browser
end

#After all
at_exit do
    unless ENV["STAY_OPEN"]
        browser.close
    end
end
