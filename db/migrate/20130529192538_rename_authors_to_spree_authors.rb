class RenameAuthorsToSpreeAuthors < ActiveRecord::Migration[4.2]
  def change
    rename_table :authors, :spree_authors
  end
end
