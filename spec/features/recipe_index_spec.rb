require 'rails_helper'

RSpec.describe 'Inventory show page', type: :feature do
  before :each do
    @user1 = User.create(
      Name: 'Gideon',
      email: 'gideon@gmail.com',
      password: '1234567'
    )

    @recipe1 = Recipe.create(name: 'Tacos', user_id: @user1.id, description: 'Tacos are delicious')
    @recipe2 = Recipe.create(name: 'Pizza', user_id: @user1.id, description: 'Pizza is delicious')
  end

  describe 'Recipe Index page' do
    it 'displays the name of the recipe' do
      visit recipes_path
      expect(page).to have_content('Tacos')
    end

    it 'displays the name of the recipe' do
      visit recipes_path
      expect(page).to have_content('Pizza')
    end

    it 'displays the description of the recipe' do
      visit recipes_path
      expect(page).to have_content('Tacos are delicious')
    end

    it 'displays the description of the recipe' do
      visit recipes_path
      expect(page).to have_content('Pizza is delicious')
    end
  end
end
