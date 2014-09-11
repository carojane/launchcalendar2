class Day < ActiveRecord::Base
  belongs_to :week
  belongs_to :campaign

  validates :name, presence: true
  validates :week, presence: true
  validates :campaign, presence: true
end
