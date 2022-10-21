require 'rails_helper'

RSpec.describe 'Inventory show page', type: :feature do
  before :each do
    @user1 = User.create(
      Name: 'Gideon',
      email: 'gideon@gmail.com',
      password: '1234567'
    )

      @recipe = Recipe.create(
      name: 'JollofRice',
      preparation_time: '1 hour',
      cooking_time: '3 hours',
      description: 'This is a very delicious jollof rice',
      public: true,
      user_id: @user1.id
    )
  end

  describe 'Recipe Show page' do
     it 'should have names of the recipe' do
      visit recipes_path
      expect(page).to have_content('JollofRice')
      expect(page).to have_content('JollofRice')
    end
  end
end