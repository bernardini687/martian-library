class Item < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, :image_url, uniqueness: true
end
