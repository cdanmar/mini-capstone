class CategoryToy < ApplicationRecord
  belongs_to :toy 
  belongs_to :category 
end
