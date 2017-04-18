# require_relative '../config/environment.rb'

require 'csv'
require 'sqlite3'
require 'pry'


csv = File.read('./db/train_info.csv')

parse_text = CSV.parse(csv)
binding.pry

def train_array
train_array.each { |train_info|
  Train.new(line: train_info[4], route: train_info[7])
}
end

def station_array
station_array.each { |train_info|
  Station.new(station_name: train_info[5], borough: train_info[6])
}
end
