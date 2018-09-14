import React from 'react';
import ReactDOM from 'react-dom';
import MarkerManager from '../../util/marker_manager.js';

class HouseMap extends React.Component {

  componentDidMount() {
    // set the map to show SF
    const mapOptions = {
      center: { lat: 37.7758, lng: -122.435 }, // this is SF
      zoom: 13
    };

    // wrap the mapDOMNode in a Google Map
    this.map = new google.maps.Map(this.mapNode, mapOptions);
    this.MarkerManager = new MarkerManager(this.map);
    this.registerListeners();
    this.MarkerManager.updateMarkers(this.props.houses);
  }

  registerListeners() {
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
      <div id='map-container' ref={ map => this.mapNode = map }>
        Map
      </div>
    );
  }
}

export default HouseMap;
