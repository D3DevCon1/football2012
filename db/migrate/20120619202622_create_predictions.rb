class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.integer :user_id
      t.integer :gameweek_no
      t.integer :fixtures
      t.integer :points

      t.timestamps
    end
  end
end
