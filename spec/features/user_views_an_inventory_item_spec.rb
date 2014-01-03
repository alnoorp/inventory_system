require 'spec_helper'

describe 'a user views an inventory item' do

  # Acceptance Criteria
  # I see an inventory item

  let(:inventory_item) { FactoryGirl.create(:inventory) }

  it 'views the info of an inventory item' do
    visit inventory_path(inventory_item)

    expect(page).to have_content inventory_item.title
    expect(page).to have_content inventory_item.description
    expect(page).to have_content inventory_item.quantity
  end
end
