require 'spec_helper'

feature 'user enters inventory information', %Q{
  As a food service employee
  I want to receive inventory
  So that it can be recorded that we have food items
} do

  # Acceptance Criteria
  # * I must specify a title, description, and quantity of the food items
  # * If I do not specify the required information, I am prompted to fix errors and to resubmit
  # * If I specify the required information, my inventory entry is recorded

  scenario 'specifying valid and required information' do
    visit root_path
    click_link 'Add Inventory Item'
    fill_in 'Title', with: 'Coffee'
    fill_in 'Description', with: 'To wake you up'
    fill_in 'Quantity', with: 1000
    click_button 'Add Inventory Item'

    expect(page).to have_content('Inventory item successfully added')
    expect(page).to have_content('Coffee')
  end

  scenario 'required information is not supplied' do
    visit root_path
    click_link 'Add Inventory Item'
    click_button 'Add Inventory Item'

    within '.input.inventory_title' do
      expect(page).to have_content "can't be blank"
    end

    within '.input.inventory_description' do
      expect(page).to have_content "can't be blank"
    end

    within '.input.inventory_quantity' do
      expect(page).to have_content "can't be blank"
    end
  end

  scenario 'required information is supplied and inventory item recorded' do
  end

end
