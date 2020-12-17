class FoodRack < ApplicationRecord
  belongs_to :user
  has_one_attached :picture

  validates :memo, presence: true
end
