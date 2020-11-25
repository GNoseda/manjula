class Feed < ApplicationRecord
  validates :cantidad, presence: true, numericality: true
  validates :time, presence: true, numericality: true 
  validates :date, presence: true
  belongs_to :baby
end
