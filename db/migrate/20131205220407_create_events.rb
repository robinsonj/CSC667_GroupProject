class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :title
      t.text :message
      t.string :dayofweek
      t.string :month
      t.string :day

      t.timestamps
    end
  end
end
