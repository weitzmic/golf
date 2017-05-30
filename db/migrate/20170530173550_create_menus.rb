class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.integer :course_id
      t.string :soft_beverage
      t.string :beer
      t.string :mixed_drink
      t.string :snack
      t.string :sandwich

      t.timestamps

    end
  end
end
