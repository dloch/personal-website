class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.integer :rank
      t.string :name

      t.timestamps
    end
  end
end
