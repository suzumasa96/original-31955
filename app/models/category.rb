class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '冷蔵庫' },
    { id: 3, name: '食品棚A' },
    { id: 4, name: '食品棚B' },
  ]

  include ActiveHash::Associations
  has_many :food_racks
end
