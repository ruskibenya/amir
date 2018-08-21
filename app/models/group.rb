class Group < ApplicationRecord
  has_many :invitations
  # belongs_to :tour
  validates :name, uniqueness: true, presence: true
end
