class AddTokenAndPaymentMethodToAcquision < ActiveRecord::Migration
  def change
  	add_column(:acquisitions, :payment_method_token, :string)
  	add_column(:acquisitions, :payment_method, :string)
  end
end
