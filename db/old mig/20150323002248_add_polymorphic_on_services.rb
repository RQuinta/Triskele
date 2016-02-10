class AddPolymorphicOnServices < ActiveRecord::Migration
  def change
    add_reference :services, :service_provider, polymorphic: true, index: true
  end
end
