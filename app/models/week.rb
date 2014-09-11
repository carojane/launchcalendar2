class Week < ActiveRecord::Base
  belongs_to :campaign
  has_many :days
  has_many :assignments, through: :days

  validates :campaign, presence: true
end
