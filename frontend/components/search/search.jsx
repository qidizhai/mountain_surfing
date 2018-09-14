import React from 'react';
import HouseIndex from './house_index';
import HouseMap from '../house_map/house_map';

const Search = (props) => (
  <div>
    <HouseMap />
    <HouseIndex houses={props.houses}/>
  </div>
);

export default Search;
