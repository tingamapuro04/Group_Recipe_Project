require 'rails_helper'

RSpec.describe 'Inventory show page', type: :feature do
  before :each do
    @user1 = User.create(
      Name: 'Gideon',
      email: 'gideon@gmail.com',
      password: '1234567'
    )

    @inventory1 = Inventory.create(Name: 'Inventory 1', user_id: @user1.id)
    @inventory2 = Inventory.create(Name: 'Inventory 2', user_id: @user1.id)
  end

  describe 'Inventory show page' do
    it 'displays the name of the inventory' do
      visit inventory_path(@inventory1)
      expect(page).to have_content('Inventory 1')
    end

    it 'displays the name of the inventory' do
      visit inventory_path(@inventory2)
      expect(page).to have_content('Inventory 2')
    end
  end
end
