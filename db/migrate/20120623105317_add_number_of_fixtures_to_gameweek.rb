class AddNumberOfFixturesToGameweek < ActiveRecord::Migration
  def change
    add_column :gameweeks, :num_fixtures, :integer
  end
end
