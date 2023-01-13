require 'rails_helper'

RSpec.describe Category, type: :model do
  subject do
    User.create(name: 'Nuk Tashino', email: 'nuk@tashino.com', password: 'firemargin',
                password_confirmation: 'firemargin')
  end
  before do
    @category = Category.create(name: 'category 1', user_id: subject.id)
  end

  context 'Validations should be working' do
    it 'ALL validations should be valid' do
      expect(subject).to be_valid
    end

    it 'Name inventory validation should return true' do
      expect(@category.name).to eql('category 1')
    end

    it 'Name user validation should return true' do
      expect(subject.name).to eql('Nuk Tashino')
    end

    it 'Name user validation should return true' do
      expect(subject.email).to eql('nuk@tashino.com')
    end

    it 'Inventory user validation should return true' do
      expect(@category.user_id).to eql(subject.id)
    end
  end
end
