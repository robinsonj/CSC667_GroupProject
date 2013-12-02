class AddAttachmentPhoto1ToDonations < ActiveRecord::Migration
  def self.up
    change_table :donations do |t|
      t.attachment :photo1
    end
  end

  def self.down
    drop_attached_file :donations, :photo1
  end
end
