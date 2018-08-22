class Activity < ApplicationRecord
  # belongs_to :tour
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates_inclusion_of :meeting_point, :in => [true, false]
  CATEGORIES = ["Business", "Travel & Outdoor", "Food & Drink", "Lecture", "Cultural", "Religious", "Other"]
  validates_inclusion_of :category, :in => CATEGORIES
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
