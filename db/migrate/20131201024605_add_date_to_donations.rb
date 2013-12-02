class AddDateToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :date, :date
  end
end
