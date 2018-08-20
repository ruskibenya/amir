class RemoveStartDateFromTours < ActiveRecord::Migration[5.2]
  def change
    remove_column :tours, :start_date, :date
  end
end
