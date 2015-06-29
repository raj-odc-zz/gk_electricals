class PurchaseOrder < ActiveRecord::Base
  belongs_to :product
  belongs_to :customer
  before_save :calculate_balance

  private
  def calculate_balance
    self.balance = (self.amount - self.discount) - self.paid_amount
  end
end
