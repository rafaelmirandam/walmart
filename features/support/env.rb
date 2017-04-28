require "capybara/cucumber"
require "selenium-webdriver"
require "rspec"


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
        'args' => ['--start-maximized']
      }
    )
  )
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 40

Capybara.app_host = "https://www.walmart.com.br/"
