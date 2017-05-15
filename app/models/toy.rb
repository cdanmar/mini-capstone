class Toy < ApplicationRecord
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
end
