class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :name
      t.integer :value
			t.integer :parent_id

      t.timestamps
    end
		add_index :experiences, :parent_id
  end
end
