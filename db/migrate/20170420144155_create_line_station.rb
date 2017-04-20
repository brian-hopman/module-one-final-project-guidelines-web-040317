class CreateLineStation < ActiveRecord::Migration[5.0]
  def change
    create_table :line_stations do |ls|
      ls.integer :station_id
      ls.integer :line_id
    end
  end
end
