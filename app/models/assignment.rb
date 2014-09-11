class Assignment < ActiveRecord::Base
  belongs_to :campaign

  validates :name, presence: true
  validates :date, presence: true
  validates :campaign, presence: true
end
