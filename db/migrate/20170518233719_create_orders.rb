class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :toy_id
      t.integer :user_id
      t.integer :quantity
      t.decimal :subtotal, precision: 9, scale: 2
      t.decimal :tax, precision: 9, scale: 2
      t.decimal :total, precision: 9, scare: 2

      t.timestamps
    end
  end
end
