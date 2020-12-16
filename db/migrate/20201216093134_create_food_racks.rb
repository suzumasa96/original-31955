class CreateFoodRacks < ActiveRecord::Migration[6.0]
  def change
    create_table :food_racks do |t|
      t.string  :food_name
      t.string  :picture
      t.integer :category_id
      t.integer :food_deadline
      t.text    :memo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
