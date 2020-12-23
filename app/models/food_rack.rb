class FoodRack < ApplicationRecord
  belongs_to :user
  has_one_attached :picture

  def was_attached?
    self.image.attached?
  end

  def previous
    FoodRack.where("id < ?", self.id).order("id DESC").first
  end
  def next
    FoodRack.where("id > ?", self.id).order("id ASC").first
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :month
  belongs_to :day

  validates :picture, presence: true
  validates :category_id, numericality: { other_than: 1 }
  validates :month_id, numericality: { other_than: 1 }
  validates :day_id, numericality: { other_than: 1 }
end
