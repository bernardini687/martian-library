require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'items' do
    let!(:items) { create_pair(:item) }

    let(:query) do
      <<~Q
        query {
          items {
            title
          }
        }
      Q
    end

    subject(:result) do
      MartianLibrarySchema.execute(query).as_json
    end

    it 'returns all items' do
      expect(result.dig('data', 'items')).to match_array(
        items.map { |item| { 'title' => item.title } }
      )
    end
  end

  describe 'users' do
    let!(:users) { create_pair(:user) }

    let(:query) do
      <<~Q
        query {
          users {
            firstName
          }
        }
      Q
    end

    subject(:result) do
      MartianLibrarySchema.execute(query).as_json
    end

    it 'returns all users' do
      expect(result.dig('data', 'users')).to match_array(
        users.map { |user| { 'firstName' => user.first_name } }
      )
    end
  end
end
