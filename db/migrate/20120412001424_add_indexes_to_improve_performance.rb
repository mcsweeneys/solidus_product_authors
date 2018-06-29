class AddIndexesToImprovePerformance < ActiveRecord::Migration[4.2]
  def change
    add_index(:authors_products, :author_id)
    add_index(:authors_products, :product_id)
    add_index(:authors_products, [:author_id, :product_id])
  end
end
