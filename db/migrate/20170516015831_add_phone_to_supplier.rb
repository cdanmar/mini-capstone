class AddPhoneToSupplier < ActiveRecord::Migration[5.1]
  def change
    add_column :suppliers, :phone, :string
  end
end
