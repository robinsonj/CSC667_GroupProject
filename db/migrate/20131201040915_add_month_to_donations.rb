class AddMonthToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :month, :string
  end
end
