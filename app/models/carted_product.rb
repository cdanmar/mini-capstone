class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :toy
  belongs_to :order, optional: true

  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0}

  def subtotal
    toy.price * quantity
  end
end