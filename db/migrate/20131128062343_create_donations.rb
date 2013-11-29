class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.text :title
      t.text :message

      t.timestamps
    end
  end
end
