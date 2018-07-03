class AddIndexesToImprovePerformance < ActiveRecord::Migration[4.2]
  def change
    add_index(:spree_authors_products, :author_id)
    add_index(:spree_authors_products, :product_id)
    add_index(:spree_authors_products, [:author_id, :product_id])
  end
end
