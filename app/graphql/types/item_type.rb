module Types
  class ItemType < BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: true
    field :image_url, String, null: true
    field :owner, UserType, null: false, method: :user
  end
end
