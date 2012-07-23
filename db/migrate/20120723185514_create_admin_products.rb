class CreateAdminProducts < ActiveRecord::Migration
  def self.up
    create_table :admin_products do |t|
      t.string :name
      t.string :code
      t.string :type
      t.text :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_products
  end
end
