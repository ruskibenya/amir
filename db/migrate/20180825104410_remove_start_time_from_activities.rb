class RemoveStartTimeFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :start_time, :datetime
  end
end
