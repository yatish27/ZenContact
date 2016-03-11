class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name

      t.add_attachment :input_file
      t.add_attachment :output_file

      t.references :user
      t.timestamps
    end
  end
end
