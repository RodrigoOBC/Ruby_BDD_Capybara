require "Capybara"
require "Capybara/cucumber"
require "site_prism"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,
                                 :browser => :chrome,
                                 :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
                                   "chromeOptions" => {
                                     "args" => ["--start-maximized"],
                                   },
                                 ))
end
