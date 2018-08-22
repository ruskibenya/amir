class ChangeTypeOfStartingTimeFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :ending_time
    remove_column :activities, :starting_time
    add_column :activities, :starting_time, :datetime
    add_column :activities, :ending_time, :datetime
  end
end
