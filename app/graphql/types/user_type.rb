module Types
  class UserType < BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :full_name, String, null: false
    field :items, [ItemType], null: false

    def full_name
      "#{object.first_name} #{object.last_name}".strip
    end
  end
end
