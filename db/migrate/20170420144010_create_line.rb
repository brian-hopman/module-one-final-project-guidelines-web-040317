class CreateLine < ActiveRecord::Migration[5.0]
  def change
    create_table :lines do |l|
      l.string :line_name
    end
  end
end
