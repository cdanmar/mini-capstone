class Toy < ApplicationRecord
  belongs_to :supplier
  
  has_many :images

  has_many :category_toys
  has_many :categories, through: :category_toys

  has_many :carted_products
  has_many :orders, through: :carted_products

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: true
  validates :description, presence: true

  def sale_message
    if price < 10
      "Discount Items!"
    else
      "Everyday Value!!"
    end
  end

  def discounted?
    price < 20
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def first_image_url
    image_collection = images
    if image_collection.length == 0
      "http://nursevibe.com/images/clients-pic/2.png"
    else
      image_collection.first.first.url
    end
  end

  def stringify_categories
    categories.map { |category| category.name.titleize }.join(", ")
  end
end
