class Tour < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :activities
  validates :name, uniqueness: true, presence: true
  validates_inclusion_of :status, :in => %w(sent pending)
end
