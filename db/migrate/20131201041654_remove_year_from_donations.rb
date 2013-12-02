class RemoveYearFromDonations < ActiveRecord::Migration
  def change
    remove_column :donations, :year, :string
  end
end
