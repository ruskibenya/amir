class AddStartingDateToActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :starting_date, :date
  end
end
