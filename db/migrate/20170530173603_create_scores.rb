class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.integer :user_id
      t.integer :hole_id
      t.integer :score
      t.datetime :datetime

      t.timestamps

    end
  end
end
