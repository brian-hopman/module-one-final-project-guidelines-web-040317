class CreateBorough < ActiveRecord::Migration[5.0]
  def change
      create_table :boroughs do |b|
      b.string :borough_name
    end
  end
end
