class Station < ActiveRecord::Base

    belongs_to :borough
    has_many :routes, through: :borough


  # attr_accessor :station_name, :borough
  #
  # ALL = []
  #
  # def initialize(station_name:, borough:)
  #   @station_name = station_name
  #   @borough = borough
  # end
  #
  # def self.all
  #   ALL
  # end
  #
  # def self.save(station_name, borough)
  #   db[:conn].execute("INSERT INTO stations (station_name, borough)
  #   VALUES (?, ?)", station_name, borough)
  # end

  # # belongs_to :trains
  # def self.make_db(db)
  #   self.all.each { |train_info|
  #     self.save(train_info.station_name, train_info.borough, db)
  #   }
  # end

end
