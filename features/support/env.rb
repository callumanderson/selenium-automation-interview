require 'rspec/expectations'

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
