class AddPartialPaymentFieldsToSpreePaymentMethod < ActiveRecord::Migration
  def change
  	add_column :spree_payment_methods, :partial_percentage, :integer, :default => 0
  end
end
