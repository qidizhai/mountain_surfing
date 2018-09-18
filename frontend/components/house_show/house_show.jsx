import React from 'react';
import HouseMap from '../house_map/house_map';
import HouseDetail from './house_detail';
import { Link } from 'react-router-dom';

const HouseShow = ({ house, houseId, fetchHouse }) => {
  const houses = {
    [houseId]: house
  };

  return(

    <div className="single-house-show">
      <div className="single-house-map">
        <HouseMap
          house= {house}
          houses = {houses}
          houseId = {houseId}
          singleHouse = {true}
          fetchHouse = {fetchHouse}
        />
      </div>
      <div className="right-half">
        <HouseDetail house={house} />
      </div>
    </div>
  );

}

export default HouseShow;
