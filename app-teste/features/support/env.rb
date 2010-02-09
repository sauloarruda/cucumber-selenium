require "spec/expectations"
require "test/unit"
require "rubygems"
gem "selenium-client", ">=1.2.9"
require "selenium/client"
require "selenium/rake/tasks"

# "before all"
browser = Selenium::Client::Driver.new("localhost", 4444, "*chrome", "http://localhost:3000", 5000)
browser.start_new_browser_session
browser.set_timeout 10000

Before do
  @browser = browser
end

# "after all"
at_exit do
  browser.stop
  browser.close_current_browser_session rescue nil
end