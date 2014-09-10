class Assignment < ActiveRecord::Base
  belongs_to :day

  validates :name, presence: true
  validates :url, uniqueness: true
  validates :day, presence: true
end
