require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) do
    User.create(
      name: 'Nuk Tashino',
      email: 'nuktashino@gmail.com',
      password: 'lalala'
    )
  end

  subject do
    Group.new(
      name: 'Quartz',
      icon: 'https://picsum.photos/200',
      user_id: user.id
    )
  end

  before { subject.save }

  describe 'valid attributes' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      subject.name = 'Quartz'
      expect(subject).to be_valid
    end

    it 'is not valid without an icon' do
      subject.icon = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a user_id' do
      subject.user_id = nil
      expect(subject).to_not be_valid
    end
  end
end
