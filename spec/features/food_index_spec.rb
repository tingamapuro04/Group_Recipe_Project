require "rails_helper"

RSpec.describe "food index page", type: :feature do
   before :each do

    @food1 = Food.create(
      name: 'Apple',
      measurement_unit: 'kg',
      price: 1)


        @food2 = Food.create(
      name: 'Banana',
      measurement_unit: 'gram',
      price: 120)
   end

   describe 'food index page' do
    it 'displays all foods' do
      visit foods_path
      expect(page).to have_content('Apple')
      expect(page).to have_content('Banana')
    end

    it 'displays a link to create a new food' do
      visit foods_path
      expect(page).to have_content('New food')
      expect(page).to have_content('Food')
      expect(page).to have_content('Measurement Unit')
      expect(page).to have_content('Unit Price')
      expect(page).to have_content('Actions')
    end

it 'displays correct measurement unit for each food' do
      visit foods_path
      expect(page).to have_content('gram')
      expect(page).to have_content('kg')
    end

     it 'displays correct price for @food' do
      visit foods_path
      expect(page).to have_content('1')
      expect(page).to have_content('120')
    end
  end
end