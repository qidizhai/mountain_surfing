class MarkerManager {
  constructor(map) {
    this.map = map;
    this.markers = {};
  }

  updateMarkers(houses) {
    const housesObj = {};
    houses.forEach(house => housesObj[house.id] = house);

    houses.filter(house=> !this.markers[house.id]).forEach(newHouse => this.createMarkerFromHouse(newHouse));

  }

  createMarkerFromHouse(house){
    const houseLatlng = new google.maps.LatLng(house.lat, house.lng);
    const marker = new google.maps.Marker({
      position: houseLatlng,
      map: this.map,
      houseId: house.id
    });
    this.markers[marker.houseId] = marker;
    //marker.setMap(this.map);
  }
  //...
}

export default MarkerManager;
