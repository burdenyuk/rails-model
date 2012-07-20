class AddAuthorsEmailToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :authors_email, :string
  end

  def self.down
    remove_column :posts, :authors_email
  end
end
