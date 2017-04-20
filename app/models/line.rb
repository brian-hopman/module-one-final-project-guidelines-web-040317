class Line < ActiveRecord::Base

  has_many :line_stations
  has_many :stations, through: :line_stations
  # has_many :arrivals, through: :stations

  # attr_accessor :line, :route
  #
  # ALL = []
  #
  # def initialize(line:, route:)
  #   @line = line
  #   @route = route
  #   ALL << self
  # end
  #
  # def self.all
  #   ALL
  # end
  #
  # def self.save (line, route)
  #   db[:conn].execute("INSERT INTO trains (line, route)
  #   VALUES (?, ?)", line, route)
  # end

  # has_many :stations
  # def self.make_db(db)
  #   self.all.each { |train_info|
  #     self.save(train_info.line, train_info.route, db)
  #   }
  # end




end
