class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :address
      t.string :city
      t.float :longitude
      t.float :latitude
      t.boolean :meeting_point
      t.string :category
      t.references :tour, foreign_key: true

      t.timestamps
    end
  end
end
