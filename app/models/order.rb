class Order < ApplicationRecord
  belongs_to :toy, optional: true
  belongs_to :user
end
