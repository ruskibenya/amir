class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tours, dependent: :destroy
  has_many :invitations, dependent: :destroy
  validates_inclusion_of :role, in: ["guide", "visitor"], presence: true
  validates :email, uniqueness: true, presence: true
end
