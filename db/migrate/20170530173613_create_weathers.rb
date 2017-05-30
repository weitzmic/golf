class CreateWeathers < ActiveRecord::Migration[5.0]
  def change
    create_table :weathers do |t|
      t.float :temperature
      t.string :summary
      t.integer :score_id

      t.timestamps

    end
  end
end
