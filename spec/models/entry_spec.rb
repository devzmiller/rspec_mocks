require 'rails_helper'

describe Entry, type: :model do
  let!(:user) {instance_double("User")}
  let!(:entry) {Entry.create!(title: "Sandwiches", body: "ham and cheese", user: user)}

  describe 'validations' do
    it 'is valid with all attributes present' do
      expect(entry).to be_valid
    end
    it 'is invalid without a title' do
      entry.title = nil
      expect(entry).to_not be_valid
    end
  end
end
