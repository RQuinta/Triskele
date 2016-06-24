class AddTimestamp < ActiveRecord::Migration
  def change
  	add_timestamps(:acquisitions)
  	add_timestamps(:users)
  	add_timestamps(:professionals)
  	add_timestamps(:appointments)
  	add_timestamps(:services)
  	add_timestamps(:service_changes)
  	add_timestamps(:service_pictures)
  	add_timestamps(:additionals)
  end
end
