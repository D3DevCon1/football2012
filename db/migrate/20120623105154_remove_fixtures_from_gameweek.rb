class RemoveFixturesFromGameweek < ActiveRecord::Migration
  def up
    remove_column :gameweeks, :fixtures
  end

  def down
    add_column :gameweeks, :fixtures, :integer
  end
end
