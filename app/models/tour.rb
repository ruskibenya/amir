class Tour < ApplicationRecord
  belongs_to :user
  belongs_to :group, optional: true
  has_many :activities, inverse_of: :tour
  accepts_nested_attributes_for :activities

  has_many :activities, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  # validates_inclusion_of :status, :in => %w(sent pending)

  CATEGORIES = ["School", "Family Reunion", "Religious", "Business", "Pub Crawl", "Other"]
  validates_inclusion_of :category, :in => CATEGORIES
end
