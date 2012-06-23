class Gameweek < ActiveRecord::Base
  attr_accessible :fixtures, :gameweek_no, :start_date, :start_time
  
  #has_many :fixtures
  has_many :predictions
  belongs_to :user
end
