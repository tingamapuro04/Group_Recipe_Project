require 'rails_helper'

RSpec.describe 'Inventory index page', type: :feature do
  before :each do
    @user1 = User.create(
      Name: 'Gideon',
      email: 'gideon@gmail.com',
      password: '1234567'
    )

    Inventory.create(Name: 'Inventory 1', user_id: @user1.id)
    Inventory.create(Name: 'Inventory 2', user_id: @user1.id)
  end

  describe 'Inventory index page' do
    it 'displays all inventories' do
      visit inventories_path
      expect(page).to have_content('Inventories')
    end

    it 'displays a show link' do
      visit inventories_path
      expect(page).to have_content('New inventory')
    end
  end
end