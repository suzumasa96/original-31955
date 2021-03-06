class CreateFoodRacks < ActiveRecord::Migration[6.0]
  def change
    create_table :food_racks do |t|
      t.references :user, null: false, foreign_key: true
      t.string  :food_name
      t.string  :picture
      t.integer :category_id
      t.integer :year_id
      t.integer :month_id
      t.integer :day_id
      t.text    :memo

      t.timestamps
    end
  end
end
