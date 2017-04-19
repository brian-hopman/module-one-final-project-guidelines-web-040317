class Boroughs < ActiveRecord::Migration

  def change
    create_table :boroughs do |t|
      t.string :borough
      t.integer :station_id
      t.integer :route_id
    end
  end
end
