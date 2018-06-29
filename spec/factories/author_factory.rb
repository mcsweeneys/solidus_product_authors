# frozen_string_literal: true

require 'spree/testing_support/factories/order_factory'
require 'spree/testing_support/factories/product_factory'

FactoryBot.define do
  factory :author, class: 'Spree::Author' do
    name "Author #{1.upto(4).map { (0..9).to_a.sample }}"
    permalink "author#{1.upto(4).map { (0..9).to_a.sample }}"
  end
end