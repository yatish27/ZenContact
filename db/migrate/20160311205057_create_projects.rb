class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name

      t.string :input_file_path
      t.string :output_file_path

      t.references :user
      t.timestamps
    end
  end
end
