class AddStartDateToTours < ActiveRecord::Migration[5.2]
  def change
    add_column :tours, :start_date, :date
  end
end
