class RemoveEndDateFromTours < ActiveRecord::Migration[5.2]
  def change
    remove_column :tours, :end_date, :date
  end
end
