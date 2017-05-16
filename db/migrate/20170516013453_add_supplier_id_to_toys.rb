class AddSupplierIdToToys < ActiveRecord::Migration[5.1]
  def change
    add_column :toys, :supplier_id, :integer
  end
end
