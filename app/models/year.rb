class Year < ActiveHash::Base
  self.data = [
   { id: 1, name: '-年-' },
   { id: 2, name: '2021年' },
   { id: 3, name: '2022年' },
   { id: 4, name: '2023年' },
   { id: 5, name: '2024年' },
   { id: 6, name: '2025年' },
   { id: 7, name: '2026年' },
   { id: 8, name: '2027年' },
  ]
   include ActiveHash::Associations
   has_many :food_racks
end