class CreatePurchaseOrders < ActiveRecord::Migration
  def change
    create_table :purchase_orders do |t|
      t.belongs_to :customer, index: true
      t.belongs_to :product, index: true
      t.string :quantity
      t.float :amount
      t.float :discount
      t.float :paid_amount
      t.float :balance
      t.datetime :purchase_date
      t.timestamps
    end
  end
end
