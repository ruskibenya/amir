class RemoveStartingDateFromActivity < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :starting_date, :date
  end
end
