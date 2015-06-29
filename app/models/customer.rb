class Customer < ActiveRecord::Base
  has_many :products, through: :purchase_orders
  has_many :purchase_orders
end
