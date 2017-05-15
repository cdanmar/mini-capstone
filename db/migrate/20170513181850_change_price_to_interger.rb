class ChangePriceToInterger < ActiveRecord::Migration[5.1]
  def change
    change_column :toys, :price, 'integer USING CAST(price AS integer)'
  end
end
