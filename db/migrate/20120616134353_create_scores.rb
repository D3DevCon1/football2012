class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :home_score
      t.integer :away_score
      t.string :result

      t.timestamps
    end
  end
end
