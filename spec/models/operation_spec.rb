require 'rails_helper'

RSpec.describe Operation, type: :model do
  before(:each) do
    @user = User.create(name: 'Nuk Tashino', email: 'nuk@tashino.com', password: 'firemargin',
                        password_confirmation: 'firemargin')
    @category = Category.create(name: 'category 2', user_id: @user.id)
    @transaction = Operation.create(name: 'transaction 1', amount: 22.4, user_id: @user.id)
  end

  it 'Inventoryfood should have valid attributes' do
    expect(@transaction.name).to eq('transaction 1')
  end

  it 'Inventoryfood should have valid attributes' do
    expect(@transaction.amount).to eq(22.4)
  end

  it 'user for inventory food should be valid' do
    expect(@user).to be_valid
  end
end
