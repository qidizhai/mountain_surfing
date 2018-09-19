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
      <div className="title-address-pic">

        <div className="house-title-address">
          <h1 className="house-title">{house.title}</h1>
          <div>
            <h3 className="location">Mariposa</h3>
          </div>
        </div>
        <div className="profile-picture-name">
          <img className="profile-image" src={house.host_url}/>
          <h3>{house.host_name}</h3>
        </div>
        <div>
          <div className="guest">
            <div className="guest-div">
              <div className="icon">
                <span className="icon-guest" aria-hidden="true">♖</span>
              </div>
              <div className="num-guest">
                <span className='num-guests'>3 guests</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <ul className="house-list">
        <li>Description: {house.description}</li>
        <li>Latitude: {house.lat}</li>
        <li>Longtitude: {house.lng}</li>
        <img className="index-image" src={house.host_url}/>
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
