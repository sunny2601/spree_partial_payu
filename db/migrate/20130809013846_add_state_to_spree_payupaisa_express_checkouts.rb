class AddStateToSpreePayupaisaExpressCheckouts < ActiveRecord::Migration
  def change
    add_column :spree_payupaisa_express_checkouts, :state, :string, :default => "complete"
  end
end
