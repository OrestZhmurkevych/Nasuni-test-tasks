Given('I open the login page') do
  @current_page = Page::Login.new
  @current_page.load
end

When('I enter valid email and password to the form and click on Login button') do
  @current_page.username_field.set('standard_user')
  @current_page.password_field.set('secret_sauce')
  @current_page.login_click.click
  @current_page = Page::Products.new
end