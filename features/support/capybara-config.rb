Capybara.register_driver :chrome_driver do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.default_driver = :chrome_driver
Capybara.app_host = 'https://www.saucedemo.com'