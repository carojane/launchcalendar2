class Day < ActiveRecord::Base
  belongs_to :campaign

  validates :campaign, presence: true
  validates :date, presence: true
end
