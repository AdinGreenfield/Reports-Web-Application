class CreateReports < ActiveRecord::Migration[5.1]
  def up
    create_table :reports do |t|
      t.string "first_name", :limit => 25
      t.string "last_name", :limit => 25
      t.string "address", :limit => 25
      t.string "city", :limit => 25
      t.string "state", :limit => 25
      t.string "zip_code", :limit => 5
      t.string "message", :default => "", :null => false

      t.timestamps
    end
  end
  def down
    drop_table :reports
  end
end
