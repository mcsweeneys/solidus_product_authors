class RevertRenameAuthorsProductsToSpreeAuthorsProducts < ActiveRecord::Migration[4.2]
  def change
    rename_table :spree_authors_products, :authors_products
  end
end
