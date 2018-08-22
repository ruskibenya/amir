class AddColumnStartTimeToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :start_time, :time
    add_column :activities, :end_time, :time
  end
end
