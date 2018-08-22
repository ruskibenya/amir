class AddStartingTimeToActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :starting_time, :time
  end
end
