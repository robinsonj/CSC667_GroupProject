class AddYearToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :year, :string
  end
end
