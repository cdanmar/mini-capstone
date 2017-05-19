class ChangeImagesIdToToyId < ActiveRecord::Migration[5.1]
  def change
    rename_column :images, :product_id, :toy_id
  end
end
