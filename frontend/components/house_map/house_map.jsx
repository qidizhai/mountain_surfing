import React from 'react';
import ReactDOM from 'react-dom';
import MarkerManager from '../../util/marker_manager.js';
import { withRouter } from 'react-router-dom';


class HouseMap extends React.Component {

  componentDidMount() {
    let mapOptions;
    if (this.props.singleHouse){
        
        mapOptions = {
        center: {lat: this.props.house.lat, lng: this.props.house.lng},
        zoom: 14
       };

    } else{
        mapOptions = {
        center: { lat: 37.7758, lng: -122.435 }, // this is SF
        zoom: 4
      };
    }
    var input = document.getElementById('pac-input');
    this.map = new google.maps.Map(this.mapNode, mapOptions);

    this.MarkerManager = new MarkerManager(this.map, this.handleMarkerClick.bind(this));
    if (this.props.singleHouse) {
      this.props.fetchHouse(this.props.houseId);
    } else {
      this.searchBox = new google.maps.places.SearchBox(input);
      this.registerListeners();
      this.MarkerManager.updateMarkers(this.props.houses);
    }
  }

  handleMarkerClick(house) {
    this.props.history.push(`houses/${house.id}`);
  }

  registerListeners() {
    this.searchBox.addListener("places_changed", () => {
      var places = this.searchBox.getPlaces();
      var bounds = new google.maps.LatLngBounds();
      bounds.union(places[0].geometry.viewport);
      this.map.fitBounds(bounds);
    });

    google.maps.event.addListener(this.map, 'idle', () => {
      const { north, south, east, west } = this.map.getBounds().toJSON();
      const bounds = {
        northEast: { lat:north, lng: east },
        southWest: { lat: south, lng: west } };
      this.props.updateFilter('bounds',bounds);
    });
  }

  componentDidUpdate() {
    if (this.props.singleHouse){
      const targetHouseKey = Object.keys(this.props.houses)[0];
      const targetHouse = this.props.houses[targetHouseKey];
      this.MarkerManager.updateMarkers([targetHouse]);
    } else {
      this.MarkerManager.updateMarkers(this.props.houses);
    }
  }

  render() {
    return (
      <div>
          <div id='map-container' ref={ map => this.mapNode = map }>
            Map
          </div>
     </div>
    );
  }
}

export default withRouter(HouseMap);
