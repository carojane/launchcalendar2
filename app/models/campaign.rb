class Campaign < ActiveRecord::Base
  has_many :weeks
  has_many :assignments
  has_many :days

  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
