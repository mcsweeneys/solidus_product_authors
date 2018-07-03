require 'spec_helper'

describe 'ProductAuthors', js: true do
  let!(:product1) { create(:product, name: 'RoR Mug', price: 10) }
  let!(:product2) { create(:product, name: 'Tote Bag', price: 10) }
  let!(:product3) { create(:product, name: 'T-Shirt', price: 10) }
  let!(:author1) { create(:author, name: 'John Doe', permalink: 'johndoe') }
  let!(:author2) { create(:author, name: 'Jane Smith', permalink: 'janesmith') }

  let!(:store) { create(:store) }

  it 'should display author on product show' do
    visit spree.products_path
    click_link product1.name
    expect(page).to have_content(/John Doe/i)

    visit spree.products_path
    click_link product2.name
    expect(page).to have_content(/John Doe/i)

    visit spree.products_path
    click_link product3.name
    expect(page).to have_content(/John Doe and Jane Smith/i)
  end
end
