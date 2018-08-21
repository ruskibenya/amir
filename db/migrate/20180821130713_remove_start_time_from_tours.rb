class RemoveStartTimeFromTours < ActiveRecord::Migration[5.2]
  def change
    remove_column :tours, :start_time, :datetime
  end
end
