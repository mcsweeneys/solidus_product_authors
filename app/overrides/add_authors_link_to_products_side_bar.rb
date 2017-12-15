Deface::Override.new(
  name: 'add_authors_link_to_products_side_bar',
  virtual_path: 'spree/admin/shared/_product_tabs',
  insert_bottom: "[data-hook='admin_product_tabs']",
  partial: 'spree/admin/authors/products_tab',
  original: '986f195c216143a965d4caf30906b9006d477964'
)
