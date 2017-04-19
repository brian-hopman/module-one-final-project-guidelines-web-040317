require "pry"

class ModelRunner



  def asks_for_starting_station
    puts "Hello, what is your starting point?"
  end

  def gets_stations
    @var = gets.chomp
  end

  def returns_var
    @var
  end

  def run
    asks_for_starting_station
    gets_stations
  end

#  def finding_by_station_name
    #station_name = asks_for_starting_station

  #  station_ary = Station.all

#    station_ary.find do |station|
#      station.station_name == @var
#    end


  #end

end
