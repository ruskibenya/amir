class AddDescriptionToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :description, :string
  end
end
