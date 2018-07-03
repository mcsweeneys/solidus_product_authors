class CreateSpreeAuthorsProducts < ActiveRecord::Migration[4.2]
  def change
    create_table :spree_authors_products do |t|
      t.integer :author_id
      t.integer :product_id

      t.timestamps
    end
  end
end
