class Invitation < ApplicationRecord
  belongs_to :group
  belongs_to :user
  validates_inclusion_of :status, :in => %w(0..2)
end
