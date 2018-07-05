Deface::Override.new(
  name: 'add_authors_link_to_product_show',
  virtual_path: 'spree/products/show',
  insert_after: 'h1',
  partial: 'spree/products/authors_list',
)
