class RemovePhoneFromSupplier < ActiveRecord::Migration[5.1]
  def change
    remove_column :suppliers, :phone, :integer
  end
end
