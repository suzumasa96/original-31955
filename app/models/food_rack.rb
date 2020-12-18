class FoodRack < ApplicationRecord
  belongs_to :user
  has_one_attached :picture

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  validates :memo, presence: true
  validates :category_id, numericality: { other_than: 1 }
end
