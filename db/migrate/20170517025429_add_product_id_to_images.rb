class AddProductIdToImages < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :product_id, :string
    add_column :images, :product_id, :integer
  end
end
