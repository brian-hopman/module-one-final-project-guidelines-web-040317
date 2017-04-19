class Routes < ActiveRecord::Migration

  def change
    create_table :routes do |t|
      t.string :line
      t.string :route
    end
  end



end
