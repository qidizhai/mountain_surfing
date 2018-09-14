import React from 'react';
import HouseIndex from './house_index';
import HouseMap from '../house_map/house_map';

const Search = (props) => (
  <div>
    <HouseMap houses={props.houses} updateBounds={props.updateBounds}/>
    <HouseIndex houses={props.houses}/>
  </div>
);

export default Search;
