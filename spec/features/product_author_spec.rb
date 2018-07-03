require 'spec_helper'

describe 'ProductAuthors', js: true do
  let!(:store) { create(:store) }
  
  before :each do
    @product1 = create(:product, name: 'RoR Mug', price: 10)
    @product2 = create(:product, name: 'Tote Bag', price: 10)
    @product3 = create(:product, name: 'T-Shirt', price: 10)
    @author1 = create(:author, name: 'John Doe', permalink: 'johndoe')
    @author2 = create(:author, name: 'Jane Smith', permalink: 'janesmith')

    @product1.authors << @author1
    @product2.authors << @author2
    @product3.authors << @author1
    @product3.authors << @author2
  end

  it 'should display author on author show' do
    visit spree.author_path(@author1)
    expect(page).to have_content(/John Doe/i)
    expect(page).to have_content(/RoR Mug/i)
    expect(page).not_to have_content(/Tote Bag/i)
    expect(page).to have_content(/T-Shirt/i)

    visit spree.author_path(@author2)
    expect(page).to have_content(/Jane Smith/i)
    expect(page).not_to have_content(/RoR Mug/i)
    expect(page).to have_content(/Tote Bag/i)
    expect(page).to have_content(/T-Shirt/i)
  end

  it 'should not display deleted products on author show' do
    @product4 = create(:product, name: 'Deleted Pants', price: 10, deleted_at: 1.day.ago)
    @product4.authors << @author1

    visit spree.author_path(@author1)
    expect(page).not_to have_content(/Deleted Pants/i)
  end

  skip 'should display author on product show' do
    visit spree.products_path
    click_link @product1.name
    expect(page).to have_content(/John Doe/i)

    visit spree.products_path
    click_link @product2.name
    expect(page).to have_content(/Jane Smith/i)

    visit spree.products_path
    click_link @product3.name
    expect(page).to have_content(/John Doe and Jane Smith/i)
  end
end
