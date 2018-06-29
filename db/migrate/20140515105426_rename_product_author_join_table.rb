class RenameProductAuthorJoinTable < ActiveRecord::Migration[4.2]
  def change
    rename_table :authors_products, :spree_authors_products
  end
end
