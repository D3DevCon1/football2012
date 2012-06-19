class Scorecast < ActiveRecord::Base
  attr_accessible :away_score, :gameweek_no, :home_score, :points, :user_id
end
