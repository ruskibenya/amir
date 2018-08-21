class AddEndingTimeToActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :ending_time, :time
  end
end
