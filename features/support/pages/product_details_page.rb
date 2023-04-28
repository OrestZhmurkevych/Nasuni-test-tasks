module Page

  class ProductDetails < SitePrism::Page
    element :product_name, '.inventory_details_name'
    element :product_description, '.inventory_details_desc'
    element :product_price, '.inventory_details_price'
  end
end
