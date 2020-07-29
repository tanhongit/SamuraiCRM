class AddAdminToSamuraiUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :samurai_users, :admin, :boolean
  end
end
