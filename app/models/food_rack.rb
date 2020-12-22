class FoodRack < ApplicationRecord
  belongs_to :user
  has_one_attached :picture

  def self.search(search)
    if search != ""
      FoodRack.where('text LIKE(?)',"%#{search}%")
    else
      FoodRack.all
    end
  end
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  validates :category_id, numericality: { other_than: 1 }
end
