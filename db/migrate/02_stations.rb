class Stations < ActiveRecord::Migration

  def change
    create_table :stations do |t|
      t.string :station_name
      t.string :borough
    end
  end

end
