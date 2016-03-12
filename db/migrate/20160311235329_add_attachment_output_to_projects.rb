class AddAttachmentOutputToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :output
    end
  end

  def self.down
    remove_attachment :projects, :output
  end
end
