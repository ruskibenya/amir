class AddEndingDateToActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :ending_date, :date
  end
end
