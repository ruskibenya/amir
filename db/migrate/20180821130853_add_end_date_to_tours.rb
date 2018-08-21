class AddEndDateToTours < ActiveRecord::Migration[5.2]
  def change
    add_column :tours, :end_date, :date
  end
end
