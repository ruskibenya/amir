class AddDateToActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :date, :date
  end
end
