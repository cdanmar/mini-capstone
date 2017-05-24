class Order < ApplicationRecord
  belongs_to :toy, optional: true
  belongs_to :user

  has_many :carted_products
  has_many :toys, through: :carted_products
end
