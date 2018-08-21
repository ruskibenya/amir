class Group < ApplicationRecord
  has_many :invitations, dependent: :destroy
  has_many :tours
  validates :name, uniqueness: true, presence: true
end
