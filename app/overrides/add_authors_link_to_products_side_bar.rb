Deface::Override.new(
  name: 'add_authors_link_to_products_side_bar',
  virtual_path: 'spree/admin/shared/_product_tabs',
  insert_bottom: "[data-hook='admin_product_tabs']",
  partial: 'spree/admin/authors/products_tab',
  original: '836913aa2407a97efeb9a956b932d6474c6fcc8b'
)
