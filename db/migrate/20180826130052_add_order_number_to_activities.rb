class AddOrderNumberToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :order_number, :integer
  end
end
