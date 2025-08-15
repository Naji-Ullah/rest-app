class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :food_items

  
end
