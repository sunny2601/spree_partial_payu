class AddTransactionIdToSpreePayupaisaExpressCheckouts < ActiveRecord::Migration
  def change
    add_column :spree_payupaisa_express_checkouts, :transaction_id, :string
    add_index :spree_payupaisa_express_checkouts, :transaction_id
  end
end
