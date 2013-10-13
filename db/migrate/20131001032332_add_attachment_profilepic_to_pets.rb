class AddAttachmentProfilepicToPets < ActiveRecord::Migration
  def self.up
    change_table :pets do |t|
      t.attachment :profilepic
    end
  end

  def self.down
    drop_attached_file :pets, :profilepic
  end
end
