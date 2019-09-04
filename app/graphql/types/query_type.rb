module Types
  class QueryType < BaseObject
    field :users, [UserType], null: false, description: 'returns all users'
    field :items, [ItemType], null: false, description: 'returns all items'

    def users
      User.all
    end

    def items
      Item.all
    end
  end
end
