class CreateFixtures < ActiveRecord::Migration
  def change
    create_table :fixtures do |t|
      t.date :match_date
      t.time :match_time
      t.string :home_team
      t.string :away_team

      t.timestamps
    end
  end
end
