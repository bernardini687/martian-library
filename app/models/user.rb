class User < ApplicationRecord
  has_many :items, dependent: :destroy

  validates :first_name, :email, presence: true
  validates :email, uniqueness: true
end
