require_relative '../config/environment.rb'

require 'csv'
require 'sqlite3'
require 'pry'


csv = File.read('./db/train_info.csv')

# parse_text = CSV.parse(csv)

times_square = Station.create(station_name: "Times Square")
atlantic_ave_barclay_ctr = Station.create(station_name: "Atlantic Ave - Barclays Ctr")
penn_station = Station.create(station_name: "Penn Station")
grand_central = Station.create(station_name: "Grand Central")
yankee_stadium = Station.create(station_name: "Yankee Stadium")
forrest_hills = Station.create(station_name: "Forrest Hills")


manhattan = Borough.create(borough_name: "Manhattan")
queens = Borough.create(borough_name: "Queens")
brooklyn = Borough.create(borough_name: "Brooklyn")
bronx = Borough.create(borough_name: "Bronx")

n = Line.create(line_name: "N")
q = Line.create(line_name: "Q")
e = Line.create(line_name: "E")
r = Line.create(line_name: "R")
w = Line.create(line_name: "W")
d = Line.create(line_name: "D")
b = Line.create(line_name: "B")
a = Line.create(line_name: "A")
c = Line.create(line_name: "C")
f = Line.create(line_name: "F")
m = Line.create(line_name: "m")
four = Line.create(line_name: "4")
five = Line.create(line_name: "5")
six = Line.create(line_name: "6")


times_square.lines << n
times_square.lines << q
times_square.lines << r
times_square.lines << w

atlantic_ave_barclay_ctr.lines << d
atlantic_ave_barclay_ctr.lines << n
atlantic_ave_barclay_ctr.lines << r


penn_station.lines << a
penn_station.lines << c
penn_station.lines << e


yankee_stadium.lines << b
yankee_stadium.lines << d

forrest_hills.lines << e
forrest_hills.lines << f
forrest_hills.lines << m
forrest_hills.lines << r

grand_central.lines << four
grand_central.lines << five
grand_central.lines << six


manhattan.stations << times_square
manhattan.stations << penn_station
manhattan.stations << grand_central

brooklyn.stations << atlantic_ave_barclay_ctr

queens.stations << forrest_hills

bronx.stations << yankee_stadium







#binding.pry
#
# def route_array(parse_text)
# parse_text.each { |train_info|
#   Route.create(line: train_info[4], route: train_info[7])
# }
# end
#
# def station_array(parse_text)
#  parse_text.each { |train_info|
#   Station.create(station_name: train_info[5])
#  }
# end
#
# def borough_array(parse_text)
#   parse_text.each { |train_info|
#     Borough.create(borough: train_info[6])
#   }
#
# end
# route_array(parse_text)
#
# station_array(parse_text)
#
# borough_array(parse_text)
