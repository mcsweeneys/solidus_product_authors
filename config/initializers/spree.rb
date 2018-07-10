Spree::Backend::Config.configure do |config|
  break if !config.respond_to? :menu_items
  config.menu_items.detect { |menu_item|
    menu_item.label == :products
  }.sections << :authors
end
