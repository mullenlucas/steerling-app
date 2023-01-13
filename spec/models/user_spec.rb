require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.create(name: 'Nuk Tashino', email: 'nuk@tashino.com', password: 'firemargin',
                        password_confirmation: 'firemargin')
  end

  it 'User should have valid name attribute' do
    expect(@user.name).to eq('Nuk Tashino')
  end

  it 'User should have valid email attribute' do
    expect(@user.email).to eq('nuk@tashino.com')
  end

  it 'user should have valid password' do
    expect(@user.password).to eq('firemargin')
  end

  it 'user should have valid password confirmation' do
    expect(@user.password_confirmation).to eq('firemargin')
  end

  it 'user for inventory food should be valid' do
    expect(@user).to be_valid
  end
end
