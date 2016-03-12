class AddAttachmentInputToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :input
    end
  end

  def self.down
    remove_attachment :projects, :input
  end
end
