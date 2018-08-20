class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.string :email
      t.integer :status
      t.references :group, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
