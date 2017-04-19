require_relative '../config/environment.rb'

require 'csv'
require 'sqlite3'
require 'pry'


csv = File.read('./db/train_info.csv')

parse_text = CSV.parse(csv)
#binding.pry

def route_array(parse_text)
parse_text.each { |train_info|
  Route.create(line: train_info[4], route: train_info[7])
}
end

def station_array(parse_text)
 parse_text.each { |train_info|
  Station.create(station_name: train_info[5])
 }
end

def borough_array(parse_text)
  parse_text.each { |train_info|
    Borough.create(borough: train_info[6])
  }

end
route_array(parse_text)

station_array(parse_text)

borough_array(parse_text)
