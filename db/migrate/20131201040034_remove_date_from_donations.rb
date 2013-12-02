class RemoveDateFromDonations < ActiveRecord::Migration
  def change
    remove_column :donations, :date, :date
  end
end
