class Trains < ActiveRecord::Migration

  def change
    create_table :trains do |t|
      t.string :line
      t.string :route
    end
  end



end
