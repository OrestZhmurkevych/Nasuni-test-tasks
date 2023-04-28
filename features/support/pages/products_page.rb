module Page

  class Products < SitePrism::Page
    set_url '/inventory.html'
    elements :list_of_products, '.inventory_list > .inventory_item'
    elements :add_to_cart_buttons, '.btn_primary'
    section :header, Section::Header, '#header_container'

    def click_on_product(product)
      product.find('.inventory_item_name').click
    end

    def get_products_name(product)
      product.find('.inventory_item_name').text
    end

    def get_products_description(product)
      product.find('.inventory_item_desc').text
    end

    def get_products_price(product)
      product.find('.inventory_item_price').text
    end
  end
end
