class Week < ActiveRecord::Base
  belongs_to :campaign
  has_many :assignments, through: :days

  validates :campaign, presence: true
  validates :week_number, presence: true
end
