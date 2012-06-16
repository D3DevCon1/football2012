class CreateGameweeks < ActiveRecord::Migration
  def change
    create_table :gameweeks do |t|
      t.integer :gameweek_no
      t.date :start_date
      t.time :start_time
      t.integer :fixtures

      t.timestamps
    end
  end
end
