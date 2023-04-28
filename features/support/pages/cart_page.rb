module Page

  class YourCart < SitePrism::Page
    set_url '/cart.html'
    section :header, Section::Header, '#header_container'
    elements :cart_items, '.cart_item'
  end
end