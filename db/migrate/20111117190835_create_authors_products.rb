class CreateAuthorsProducts < ActiveRecord::Migration[4.2]
  def change
    create_table 'authors_products' do |t|
      t.integer :author_id
      t.integer :product_id

      t.timestamps
    end
  end
end
