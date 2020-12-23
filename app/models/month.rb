class Month < ActiveHash::Base
  self.data = [
   { id: 1, name: '--' },
   { id: 2, name: '１月' },
   { id: 3, name: '２月' },
   { id: 4, name: '３月' },
   { id: 5, name: '４月' },
   { id: 6, name: '５月' },
   { id: 7, name: '６月' },
   { id: 8, name: '７月' },
   { id: 9, name: '８月' },
   { id: 10, name: '９月' },
   { id: 11, name: '１０月' },
   { id: 12, name: '１１月' },
   { id: 13, name: '１２月' },
  ]
   include ActiveHash::Associations
   has_many :food_racks
end
