class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name, null: false

      t.integer :total_contacts_count, null: false, default: 0
      t.integer :remaining_contacts_count, null: false, default: 0

      t.integer :status, null:false, default: 0
      t.references :user
      t.timestamps
    end
  end
end
