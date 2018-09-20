import React from 'react';
import { Link } from 'react-router-dom';

import ReviewShow from './review_show';

const reviewList = (reviews = [], users=[]) => {
  return (
  reviews.map(review => (
    <ReviewShow
      users={users}
      review={review}
      key={review.id}
    />
  ))
 );
};

const HouseDetail = ({ house, reviews, users, houseId }) => {

  return (
    <div>
      <div className="title-address-pic">
        <div className="title-holder">
          <div>
            <h1 className="house-title">{house.title}</h1>
            <h3 className="location">{house.address}</h3>
          </div>
          <div className="profile-picture-name">
            <img className="profile-image" src={house.host_url}/>
            <h3 className="host-name">{house.host_name}</h3>
          </div>
        </div>

        <div className="guest">
          <div className="guest-div">
            <div className="icon">
              <span className="icon-guest" aria-hidden="true">👪</span>
            </div>
            <div className="num-guest">
              <span className='num-guests'>3 guests</span>
            </div>
          </div>
        </div>

        <div className="guest">
          <div className="guest-div">
            <div className="icon">
              <span className="icon-guest" aria-hidden="true">🏡</span>
            </div>
            <div className="num-guest">
              <span className='num-guests'>5 bedroom</span>
            </div>
          </div>
        </div>

        <div className="guest">
          <div className="guest-div">
            <div className="icon">
              <span className="icon-guest" aria-hidden="true">🌸</span>
            </div>
            <div className="num-guest">
              <span className='num-guests'>shared garden</span>
            </div>
          </div>
        </div>

        <div className="guest">
          <div className="guest-div">
            <div className="icon">
              <span className="icon-guest" aria-hidden="true">🚿</span>
            </div>
            <div className="num-guest">
              <span className='num-guests'>single bathroom</span>
            </div>
          </div>
        </div>
      </div>

      <div className="hightlights">
        <div className="highlight-content">
            <h3 className="location">HOME HIGHLIGHTS</h3>
            <p className="higlights-font"><span className="bold">Sparkling clean</span>· 17 recent guests have said that this home was sparkling clean.</p>
            <p className="num-guest">Helpful👍</p>
            <br/>
            <p className="higlights-font"><span className="bold">Self check-in</span>· Easily check yourself in with the lockbox.</p>
            <p className="num-guest">Helpful👍</p>
            <br/>
            <p className="higlights-font"><span className="bold">{house.host_name} is a Superhost</span>· Superhosts are experienced, highly rated hosts who are committed to providing great stays for guests</p>
            <p className="num-guest">Helpful👍</p>
        </div>
      </div>

      <p className="description">{house.description}</p>
      <br/>
      <div className="add-border"></div>
      <h3 className="amenities">Amenities</h3>

      <div className="amenities-holder">

        <div className="left-ame">
          <div className="guest-div">
            <div className="icon">
              <span className="icon-guest" aria-hidden="true">⌛</span>
            </div>
            <div className="num-guest">
              <span className='num-guests'>Alarm</span>
            </div>
          </div>
          <br/>
          <div className="guest-div">
            <div className="icon">
              <span className="icon-guest" aria-hidden="true">🏊</span>
            </div>
            <div className="num-guest">
              <span className='num-guests'>Pool</span>
            </div>
          </div>
          <br/>
          <div className="guest-div">
            <div className="icon">
              <span className="icon-guest" aria-hidden="true">💪</span>
            </div>
            <div className="num-guest">
              <span className='num-guests'>Gym</span>
            </div>
          </div>
        </div>
        <br/>

        <div className="right-ame">
          <div className="guest-div">
            <div className="icon">
              <span className="icon-guest" aria-hidden="true">🚙</span>
            </div>
            <div className="num-guest">
              <span className='num-guests'>Free parking</span>
            </div>
          </div>
          <br/>
          <div className="guest-div">
            <div className="icon">
              <span className="icon-guest" aria-hidden="true">☕</span>
            </div>
            <div className="num-guest">
              <span className='num-guests'>Breakfast</span>
            </div>
          </div>
          <br/>
          <div className="guest-div">
            <div className="icon">
              <span className="icon-guest" aria-hidden="true">⛰</span>
            </div>
            <div className="num-guest">
              <span className='num-guests'>Balcony</span>
            </div>
          </div>
        </div>
      </div>
      <br/>
      <div className="add-border"></div>
      <h3 className="amenities">Sleeping arrangements</h3>
      <div className="arrangements">
        <div className="arrangements-content">
          <div className="padding">
            <h3>🛏</h3>
            <h4 className="bold-arrangements arrangements-font">Bedroom 5</h4>
            <p className="arrangements-font">2 king bed, 2 queen bed and 1 sofa bed</p>
          </div>
        </div>
        <div className="arrangements-content right">
          <div className="padding">
            <h3>🌹🌷</h3>
            <h4 className="bold-arrangements arrangements-font">Common spaces</h4>
            <p className="arrangements-font">1 rose garden, 1 tulip garden</p>
          </div>
        </div>
      </div>
      <br/>
      <div className="add-border"></div>
      <div className="reviews">
        <div className="review-holder">
          <h3 className="review-title">Reviews</h3>
          <Link className="create-review" to={`/houses/${houseId}/review`}>Leave a review</Link>
        </div>
        {reviewList(reviews, users)}
      </div>
    </div>

  );
};

export default HouseDetail;
