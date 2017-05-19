class RemoveImagesFromToys < ActiveRecord::Migration[5.1]
  def change
    remove_column :toys, :image, :string
  end
end
