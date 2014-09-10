class Campaign < ActiveRecord::Base
  has_many :weeks

  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
