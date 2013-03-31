class AddAttachmentAvatarToPets < ActiveRecord::Migration
  def self.up
    add_attachment :pets, :avatar
    end

  def self.down
     remove_attachment :pets, :avatar
  end
end
