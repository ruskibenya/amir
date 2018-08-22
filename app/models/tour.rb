class Tour < ApplicationRecord
  belongs_to :user
  belongs_to :group, optional: true
  has_many :activities, inverse_of: :tour
  accepts_nested_attributes_for :activities

  has_many :activities, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  # validates_inclusion_of :status, :in => %w(sent pending)
end
