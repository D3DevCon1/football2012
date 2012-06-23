class Prediction < ActiveRecord::Base
  attr_accessible :user_id, :fixture_no, :away_score, :home_score
  
  belongs_to :user
  belongs_to :fixture
end
