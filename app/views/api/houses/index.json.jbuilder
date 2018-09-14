@houses.each do |house|
  json.set! house.id do
    json.partial! 'house', house: house
  end
end
