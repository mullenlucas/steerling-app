require 'rails_helper'

RSpec.describe 'relations/index', type: :view do
  before :each do
    @user = User.create(
      name: 'Nuk Tashino',
      email: 'nuktashino@gmail.com',
      password: 'lalala'
    )

    @category = @user.groups.create(
      name: 'Leather',
      icon: 'https://picsum.photos/200',
      user_id: @user.id
    )

    @charge = Charge.create(
      name: 'Imported leather',
      amount: 60,
      author_id: @user.id
    )

    @group_charge = Relation.create(group_id: @category.id, charge_id: @charge.id)

    visit new_user_session_path
    fill_in 'user[email]', with: @user.email
    fill_in 'user[password]', with: @user.password
    click_button 'Log in'
    visit groups_path
  end

  describe 'GET /relations between groups and charges' do
    it 'displays all transactions' do
      visit group_relations_path(@category.id)
      expect(page).to have_content('Leather')
      expect(page).to have_content('Imported leather')
      expect(page).to have_content('$60.0')
      expect(page).to have_content('ADD NEW TRANSACTION')
    end
  end
end
