class RemoveEmailFromInvitations < ActiveRecord::Migration[5.2]
  def change
    remove_column :invitations, :email
  end
end
