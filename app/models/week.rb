class Week < ActiveRecord::Base
  belongs_to :campaign
  has_many :days
  has_many :assignments, through: :days

  validates :campaign, presence: true
  validates :systems_check, uniqueness: true
  validates :blog_name, uniqueness: true
  validates :blog_url, uniqueness: true
end
