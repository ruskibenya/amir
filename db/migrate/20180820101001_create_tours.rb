class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.date :start_date
      t.date :end_date
      t.string :name
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
