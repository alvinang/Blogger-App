class AddUserIdToAdmins < ActiveRecord::Migration
  def change
    add_reference :admins, :user, index: true
  end
end
