class AddDayofweekToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :dayofweek, :string
  end
end
