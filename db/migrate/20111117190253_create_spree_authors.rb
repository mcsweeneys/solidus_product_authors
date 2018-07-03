class CreateSpreeAuthors < ActiveRecord::Migration[4.2]
  def change
    create_table :spree_authors do |t|
      t.string :name
      t.text :bio
      t.string :permalink

      t.timestamps
    end
  end
end
