class Fixture < ActiveRecord::Base
  attr_accessible :away_team, :home_team, :match_date, :match_time
  
  has_many :teams
  has_many :predictions
  belongs_to :gameweek
end
