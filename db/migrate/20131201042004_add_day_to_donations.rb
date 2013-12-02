class AddDayToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :day, :string
  end
end
