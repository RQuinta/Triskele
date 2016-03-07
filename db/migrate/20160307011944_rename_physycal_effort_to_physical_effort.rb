class RenamePhysycalEffortToPhysicalEffort < ActiveRecord::Migration
  def change
  	rename_column :services, :phisycal_effort, :physical_effort
  end
end
