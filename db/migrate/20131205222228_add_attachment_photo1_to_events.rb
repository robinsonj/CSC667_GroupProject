class AddAttachmentPhoto1ToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :photo1
    end
  end

  def self.down
    drop_attached_file :events, :photo1
  end
end
