class AlterColumnPaymentMethodTokenOnAcquisition < ActiveRecord::Migration
  def change
  	rename_column :acquisitions, :payment_method_token, :payment_token
  end
end
