class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :toy
  belongs_to :order, optional: true
end