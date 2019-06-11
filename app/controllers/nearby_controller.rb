class NearbyController < ApplicationController

  def hotel
    location = get_ip()
    @client = GooglePlaces::Client.new('AIzaSyCV9mrkiC1MPy0kDbBZVn74DZg-Fnm9mrg')
    @hotels = @client.spots(location.lat, location.lng, :types => 'restaurant')
    @hash = Gmaps4rails.build_markers(@hotels) do |loc, marker|
      marker.lat loc.lat
      marker.lng loc.lng
    end
  end

  def shopping_malls
    location = get_ip()
    @client = GooglePlaces::Client.new('AIzaSyCV9mrkiC1MPy0kDbBZVn74DZg-Fnm9mrg')
    @sh = @client.spots(location.lat, location.lng, :types => 'shopping_mall')
    @hash = Gmaps4rails.build_markers(@sh) do |loc, marker|
      marker.lat loc.lat
      marker.lng loc.lng
    end
  end

  def parks
    location = get_ip()
    @client = GooglePlaces::Client.new('AIzaSyCV9mrkiC1MPy0kDbBZVn74DZg-Fnm9mrg')
    @parks = @client.spots(location.lat, location.lng, :types => 'park')
    @hash = Gmaps4rails.build_markers(@parks) do |loc, marker|
      marker.lat loc.lat
      marker.lng loc.lng
    end
  end

  def movie_theaters
    location = get_ip()
    @client = GooglePlaces::Client.new('AIzaSyCV9mrkiC1MPy0kDbBZVn74DZg-Fnm9mrg')
    @mts = @client.spots(location.lat, location.lng, :types => 'movie_theater')

    @hash = Gmaps4rails.build_markers(@mts) do |loc, marker|
      marker.lat loc.lat
      marker.lng loc.lng
    end

  end

  def hospitals
    location = get_ip()
    @client = GooglePlaces::Client.new('AIzaSyCV9mrkiC1MPy0kDbBZVn74DZg-Fnm9mrg')
    @hospitals = @client.spots(location.lat, location.lng, :types => 'hospital')
    @hash = Gmaps4rails.build_markers(@hospitals) do |loc, marker|
      marker.lat loc.lat
      marker.lng loc.lng
    end
  end

  def get_ip
     ip = '106.200.245.137'
     location =  Geokit::Geocoders::MultiGeocoder.geocode(ip.to_s)
     return location 
  end

end
