import React from 'react';
import { Link } from 'react-router';

import ReviewShow from './review_show';

const reviewList = (reviews = []) => {

  return (
  reviews.map(review => (
    <ReviewShow
      review={review}
      key={review.id}
    />
  ))
)};

const HouseDetail = ({ house, reviews }) => {
  return (
    <div>
      <ul className="house-list">
        <img className="index-image" src={house.pic_url}/>
        <li>Description: {house.description}</li>
        <li>Latitude: {house.lat}</li>
        <li>Longtitude: {house.lng}</li>
      </ul>
      <br/>
      <div className="reviews">
        <h3>reviews</h3>
        {reviewList(reviews)}
      </div>
    </div>

  );
};

export default HouseDetail;
