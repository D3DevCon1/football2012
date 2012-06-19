class CreateScorecasts < ActiveRecord::Migration
  def change
    create_table :scorecasts do |t|
      t.integer :user_id
      t.integer :gameweek_no
      t.integer :home_score
      t.integer :away_score
      t.integer :points

      t.timestamps
    end
  end
end
