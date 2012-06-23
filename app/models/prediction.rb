class Prediction < ActiveRecord::Base
  attr_accessible :gameweek_no, :match1, :match10, :match2, :match3, :match4, :match5, :match6, :match7, :match8, :match9, :user_id
end
