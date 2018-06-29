class AddPermalinkToAuthors < ActiveRecord::Migration[4.2]
  def change
    add_column :authors, :permalink, :string
  end
end
