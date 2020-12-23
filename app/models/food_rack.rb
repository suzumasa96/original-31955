class FoodRack < ApplicationRecord
  belongs_to :user
  has_one_attached :picture

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :month
  belongs_to :day

  validates :category_id, numericality: { other_than: 1 }
  validates :month_id, numericality: { other_than: 1 }
  validates :day_id, numericality: { other_than: 1 }
end
