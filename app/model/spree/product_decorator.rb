Spree::Product.class_eval do
  has_and_belongs_to_many :authors, class_name: 'Spree::Author'
end
