class MarkerManager {
  constructor(map, handleClick) {
    this.map = map;
    this.markers = {};
    this.handleClick = handleClick;
  }

  updateMarkers(houses) {
    const housesObj = {};
    houses.forEach(house => housesObj[house.id] = house);

    houses.filter(house=> !this.markers[house.id]).forEach(newHouse => this.createMarkerFromHouse(newHouse));
    Object.keys(this.markers).filter(houseId => !housesObj[houseId]).forEach(houseId => this.removeMarker(this.markers[houseId]));
  }

  createMarkerFromHouse(house){
    const houseLatlng = new google.maps.LatLng(house.lat, house.lng);
    const marker = new google.maps.Marker({
      position: houseLatlng,
      map: this.map,
      houseId: house.id
    });

    marker.addListener('click', () => this.handleClick(house));
    this.markers[marker.houseId] = marker;
    //marker.setMap(this.map);
  }

  removeMarker(marker) {
    this.markers[marker.houseId].setMap(null);
    delete this.markers[marker.houseId];
  }
  //...
}

export default MarkerManager;
