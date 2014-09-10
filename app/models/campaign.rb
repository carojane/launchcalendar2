class Campaign < ActiveRecord::Base
  has_many :weeks

  validates :name, presence: true
  validates :name, presence: true
end
