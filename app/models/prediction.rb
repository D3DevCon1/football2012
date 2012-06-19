class Prediction < ActiveRecord::Base
  attr_accessible :fixtures, :gameweek_no, :points, :user_id
end
