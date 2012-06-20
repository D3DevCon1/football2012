class Scorecast < ActiveRecord::Base
  attr_accessible :away_score, :fixture_no, :gameweek_no, :home_score, :points, :user_id
end
