class FoodItem < ApplicationRecord
    has_one_attached :img

  validates :title, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
