class Assignment < ActiveRecord::Base
  belongs_to :campaigns

  validates :name, presence: true
  validates :day, presence: true
end
