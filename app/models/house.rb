class House < ApplicationRecord
  validates :description, :lat, :lng, presence: true



    #  { "northEast"=> {"lat"=>"37.80971", "lng"=>"-122.39208"}
  def self.in_bounds(bounds)
    self.where("lat < ?", bounds[:northEast][:lat])
      .where("lat > ?", bounds[:southWest][:lat])
      .where("lng > ?", bounds[:southWest][:lng])
      .where("lng < ?", bounds[:northEast][:lng])
  end
#lat < 37.8  south
#lng < -122.39  west

end
