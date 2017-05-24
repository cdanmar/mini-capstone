class RemoveToyIdFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :toy_id, :integer
  end
end
