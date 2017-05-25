class RemoveOrderIdFromCartedProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :carted_products, :order_id, :integer
  end
end
