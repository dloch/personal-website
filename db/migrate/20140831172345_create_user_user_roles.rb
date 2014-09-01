class CreateUserUserRoles < ActiveRecord::Migration
  def change
    create_table :user_user_roles do |t|
      t.integer :user_role_id
      t.integer :user_id

      t.timestamps
    end
  end
end
