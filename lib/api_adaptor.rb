#require HTTParty

require 'protobuf'
require 'google/transit/gtfs-realtime.pb'
require 'net/http'
require 'uri'
require 'json'

data = Net::HTTP.get(URI.parse("http://datamine.mta.info/mta_esi.php?key=5d7023f7f789e66d653a6d6f45525709"))
feed = Transit_realtime::FeedMessage.decode(data)
for entity in feed.entity do
  if entity.field?(:trip_update)
    p entity.trip_update
  end
end
