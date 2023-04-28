module Page

  class Login < SitePrism::Page
    set_url '/'
    element :username_field, '#user-name'
    element :password_field, '#password'
    element :login_click, '#login-button'
  end
end
