class Spree::Author < ActiveRecord::Base
  has_and_belongs_to_many :products, class_name: 'Spree::Product'

  validates :name, presence: true, uniqueness: true
  validates :permalink, presence: true, uniqueness: true

  make_permalink

  def to_param
    return permalink if permalink.present?
    name.to_url
  end
end
