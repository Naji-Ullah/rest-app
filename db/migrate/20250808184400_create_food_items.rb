class CreateFoodItems < ActiveRecord::Migration[8.0]
  def change
    create_table :food_items do |t|
      t.string :title
      t.text :desc
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
