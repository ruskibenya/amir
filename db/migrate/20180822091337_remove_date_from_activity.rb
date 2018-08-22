class RemoveDateFromActivity < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :date, :date
  end
end
