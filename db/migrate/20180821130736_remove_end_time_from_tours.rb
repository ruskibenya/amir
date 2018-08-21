class RemoveEndTimeFromTours < ActiveRecord::Migration[5.2]
  def change
    remove_column :tours, :end_time, :datetime
  end
end
