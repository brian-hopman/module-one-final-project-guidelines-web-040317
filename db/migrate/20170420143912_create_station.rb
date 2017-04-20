class CreateStation < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |s|
      s.string :station_name
      s.integer :borough_id
    end
  end
end
