require 'rails_helper'

describe User, type: :model do
  let!(:entry) {double("Entry")}
  let!(:entry2) {double("Entry")}
  let!(:user) {User.create(name: "bob", email: "llama@llama.com", password: "ham")}

  describe 'validations' do
    it 'is invalid without a name'
    it 'is invalid without a password'
    it 'is invalid without an email'
    it 'is invalid without a unique email'
  end

  describe 'associations' do
    xit 'has many entries' do
      user.entries << [entry, entry2]
      expect(user.entries).to all be_a Entry
    end
  end
end
