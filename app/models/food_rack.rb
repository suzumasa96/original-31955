class FoodRack < ApplicationRecord
  belongs_to :user
  has_one_attached :picture
  #validatesなし　全て任意
end
