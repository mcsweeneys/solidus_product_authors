Deface::Override.new(
  name: "add_authors_link_to_products_sub_nav",
  virtual_path: "spree/admin/shared/_product_sub_menu",
  insert_bottom: "[data-hook='admin_product_sub_tabs']",
  partial: "spree/admin/authors/products_sub_nav",
  original: "b24abd0565e131de2a3bd125db83e7f3d2b3db9d"
)
