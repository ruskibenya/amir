class RemoveEndingDateFromActivity < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :ending_date, :date
  end
end
