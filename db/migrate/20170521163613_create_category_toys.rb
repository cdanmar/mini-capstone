class CreateCategoryToys < ActiveRecord::Migration[5.1]
  def change
    create_table :category_toys do |t|
      t.integer :category_id
      t.integer :toy_id

      t.timestamps
    end
  end
end
