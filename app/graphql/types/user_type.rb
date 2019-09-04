module Types
  class UserType < BaseObject
    field :first_name, String, null: false
    field :last_name, String, null: true
    field :full_name, String, null: false

    def full_name
      "#{object.first_name} #{object.last_name}".strip
    end
  end
end
