import React from 'react';
import HouseIndex from './house_index';
import HouseMap from '../house_map/house_map';


class Search extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      lat: 37.7576171,
      lng: -122.5776844
    };
  }

  render(){
    return (
      <div>
        <input id="pac-input" type="text" placeholder="Search Cities" />
        <div className="main-index">
          <HouseMap houses={this.props.houses} updateFilter={this.props.updateFilter} lat={this.state.lat} lng={this.state.lng}/>
          <HouseIndex houses={this.props.houses}/>
        </div>
      </div>
    );
  }

}

export default Search;
