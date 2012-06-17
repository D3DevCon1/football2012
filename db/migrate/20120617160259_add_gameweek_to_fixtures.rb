class AddGameweekToFixtures < ActiveRecord::Migration
  def change
    add_column :fixtures, :gameweek_no, :integer
  end
end
