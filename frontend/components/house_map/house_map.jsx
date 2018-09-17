import React from 'react';
import ReactDOM from 'react-dom';
import MarkerManager from '../../util/marker_manager.js';

const LOCATIONOPTIONS = {
  "San Francisco": { lat: 37.7758, lng: -122.435 },
  "Yosemite": { lat: 37.8529772, lng: -119.831296},
  "Yellow Stone": { lat: 44.5844249, lng: -111.0744812},
  "Rocky Mountain": { lat: 40.3503939, lng: -105.9566636},
  "Matterhorn": { lat: 45.9788215, lng: 7.6229553},
  "Denali": { lat: 63.0691674, lng: -151.0244937},
  "Great Smoky": { lat: 35.6375722, lng: -84.0940149},
  "Machu Picchu": { lat: 13.8939772, lng: -90.9272671},
  "Torres del Paine": { lat: -50.5117455, lng: -74.1071985},
  "Table Mountain": { lat: -33.925785, lng: 18.3969976},
  "Krka": { lat: 43.8005142, lng: 15.8289434},
  "Plitvice Lakes": { lat: 44.8555523, lng: 15.2411749},
  "Écrins": { lat: 45.2301005,lng: 5.9824469}
};

class HouseMap extends React.Component {

  componentDidMount() {
    let mapOptions = {
      center: { lat: 37.7758, lng: -122.435 }, // this is SF
      zoom: 13
    };
    var input = document.getElementById('pac-input');
    this.searchBox = new google.maps.places.SearchBox(input);
    this.map = new google.maps.Map(this.mapNode, mapOptions);

    this.MarkerManager = new MarkerManager(this.map);
    this.registerListeners();
    this.MarkerManager.updateMarkers(this.props.houses);
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
    this.MarkerManager.updateMarkers(this.props.houses);
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

export default HouseMap;
