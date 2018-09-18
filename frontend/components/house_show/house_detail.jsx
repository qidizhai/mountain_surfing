import React from 'react';
import { Link } from 'react-router';

const HouseDetail = ({ house }) => {
  return (
    <div>
      <ul className="house-list">
        <img className="index-image" src={house.pic_url}/>
        <li>Description: {house.description}</li>
        <li>Latitude: {house.lat}</li>
        <li>Longtitude: {house.lng}</li>
      </ul>

    </div>

  );
};

export default HouseDetail;
