class CreateSpreePayupaisaExpressCheckouts < ActiveRecord::Migration
  def change
    create_table :spree_payupaisa_express_checkouts do |t|
      t.string :token
      t.string :payer_id
    end
  end
end
