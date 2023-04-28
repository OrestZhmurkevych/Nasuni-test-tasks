module Section

  class Header < SitePrism::Section
    element :page_title, '.title'
    element :shopping_cart_icon, '.shopping_cart_link'
  end
end