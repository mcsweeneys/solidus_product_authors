Deface::Override.new(
  name: 'add_authors_link_to_products_sub_nav',
  virtual_path: 'spree/admin/shared/_product_sub_menu',
  insert_bottom: "[data-hook='admin_product_sub_tabs']",
  partial: 'spree/admin/authors/products_sub_nav',
  original: '28962cc89a844ec5dc4d70cd346620fd0cb5d7fd'
)
